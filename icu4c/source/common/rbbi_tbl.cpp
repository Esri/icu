/*
**********************************************************************
*   Copyright (C) 1999 IBM Corp. All rights reserved.
**********************************************************************
*   Date        Name        Description
*   11/11/99    rgillam     Complete port from Java.
**********************************************************************
*/

#include "ucmp8.h"
#include "cmemory.h"
#include "rbbi_tbl.h"
#include "unicode/unistr.h"
#ifdef RBBI_DEBUG
#include <stdio.h>
#endif

U_NAMESPACE_BEGIN

//=======================================================================
// constructor
//=======================================================================

RuleBasedBreakIteratorTables::RuleBasedBreakIteratorTables(UDataMemory* memory)
: refCount(0),
  ownTables(FALSE)
{
  if(memory != 0) {
    fMemory = memory;
    const void* image = udata_getMemory(memory);

    if(image != 0) {

      const int32_t* im = (const int32_t*)(image);
      const int8_t*  base = (const int8_t*)(image);

      // the memory image begins with an index that gives the offsets into the
      // image for each of the fields in the BreakIteratorTables object--
      // use those to initialize the tables object (it will end up pointing
      // into the memory image for everything)
      numCategories = (int32_t)im[0];
      description = UnicodeString(TRUE, (UChar*)((int32_t)im[1] + base), -1);
      charCategoryTable = ucmp8_openAlias((uint16_t*)((int32_t)im[2] + base),
                      (int8_t*)((int32_t)im[3] + base), 0);
      stateTable = (int16_t*)((int32_t)im[4] + base);
      backwardsStateTable = (int16_t*)((int32_t)im[5] + base);
      endStates = (int8_t*)((int32_t)im[6] + base);
      lookaheadStates = (int8_t*)((int32_t)im[7] + base);
    } else {
      udata_close(fMemory);
    }
  } else {
    fMemory = 0;
  }
}

RuleBasedBreakIteratorTables::RuleBasedBreakIteratorTables()
: refCount(0),
  ownTables(TRUE),
  fMemory(0)
{
    // everything else is null-initialized.  This constructor depends on
    // a RuleBasedBreakIteratorBuilder filling in all the members
}

//=======================================================================
// boilerplate
//=======================================================================

/**
 * Destructor
 */
RuleBasedBreakIteratorTables::~RuleBasedBreakIteratorTables() {
    if (ownTables) {
        delete [] stateTable;
        delete [] backwardsStateTable;
        delete [] endStates;
        delete [] lookaheadStates;
        ucmp8_close(charCategoryTable);
    }
    else {
        uprv_free(charCategoryTable);
        if(fMemory != 0) {
          udata_close(fMemory);
        }
    }
}

/**
 * Equality operator.  Returns TRUE if both tables objects are of the
 * same class, have the same behavior, and iterate over the same text.
 */
UBool
RuleBasedBreakIteratorTables::operator==(const RuleBasedBreakIteratorTables& that) const {
    return this->description == that.description;
}

/**
 * Compute a hash code for these tables
 * @return A hash code
 */
int32_t
RuleBasedBreakIteratorTables::hashCode() const {
    return description.hashCode();
}

//=======================================================================
// implementation
//=======================================================================
/**
 * Looks up a character's category (i.e., its category for breaking purposes,
 * not its Unicode category)
 * The ignored parameter is used by derived implementations.
 */
int32_t
RuleBasedBreakIteratorTables::lookupCategory(UChar c, BreakIterator* /*ignored*/) const {
    return ucmp8_get(charCategoryTable, c);
}

/**
 * Given a current state and a character category, looks up the
 * next state to transition to in the state table.
 */
int32_t
RuleBasedBreakIteratorTables::lookupState(int32_t state, int32_t category) const {
    return stateTable[state * numCategories + category];
}

/**
 * Given a current state and a character category, looks up the
 * next state to transition to in the backwards state table.
 */
int32_t
RuleBasedBreakIteratorTables::lookupBackwardState(int32_t state, int32_t category) const {
    return backwardsStateTable[state * numCategories + category];
}

/**
 * Returns true if the specified state is an accepting state.
 */
UBool
RuleBasedBreakIteratorTables::isEndState(int32_t state) const {
    return endStates[state];
}

/**
 * Returns true if the specified state is a lookahead state.
 */
UBool
RuleBasedBreakIteratorTables::isLookaheadState(int32_t state) const {
    return lookaheadStates[state];
}


#ifdef RBBI_DEBUG
//
//   debugDumpTables
//
void RuleBasedBreakIteratorTables::debugDumpTables() const {
    printf("Character Classes:\n");
    int currentCharClass = 257;
    int startCurrentRange = 0;
    int initialStringLength = 0;
    char  buf[80];

    UnicodeString *charClassRanges = new UnicodeString[numCategories];

    for (int i = 0; i < 0xffff; i++) {
        if ( ucmp8_get(charCategoryTable, i) != currentCharClass) {
            if (currentCharClass != 257) {
                // Complete the output of the previous range.
                if (i != startCurrentRange+1) {
                    sprintf(buf, "-%x", i-1);
                    charClassRanges[currentCharClass].append(buf);
                }
                if (charClassRanges[currentCharClass].length() % 72 < initialStringLength % 72) {
                    charClassRanges[currentCharClass].append("\n     ");
                }
            }

            // Output the start of the new range.
            currentCharClass = ucmp8_get(charCategoryTable, i);
            startCurrentRange = i;
            initialStringLength = charClassRanges[currentCharClass].length();
            if (charClassRanges[currentCharClass].length() > 0)
                charClassRanges[currentCharClass].append(", ");
            sprintf(buf, "%x", i);
            charClassRanges[currentCharClass].append(buf);
        }
    }

    for (int i=0; i<numCategories; i++) {
        printf("%d:   ", i);
        // Write out the chars in the UnicodeStrings.
        //    We know we didn't put anything into them except for plain ascii chars.
        for (int j=0; j<charClassRanges[i].length(); j++) {
            putchar(charClassRanges[i].charAt(j));
        }
        putchar('\n');
    }

    delete [] charClassRanges;


    // State table length might be too big by one, because the only indication
    //   we have is the  pointer to the start of the next item in the memory
    //   image, the backwardsStateTable, which is 4 byte aligned.
    //
    int   stateTableLength = backwardsStateTable - stateTable;
    if ((stateTableLength % numCategories) == 1) {
        stateTableLength -= 1;
    }

    printf("\n\nState Table.   *: end state     %%: look ahead state\n");
    printf("C:\t");
    for (int i = 0; i < numCategories; i++) {
        printf("%d\t", i);
    }
    printf("\n=================================================");
 
    for (int i = 0; i < stateTableLength; i++) {
        if (i % numCategories == 0) {
            putchar('\n');
            if (endStates[i / numCategories])
                putchar('*');
            else
                putchar(' ');
            if (lookaheadStates[i / numCategories]) {
                putchar('%');
            }
            else
                putchar(' ');
            printf("%d:\t", i / numCategories);
        }
        if (stateTable[i] == 0) {
            printf(".\t");
        } else {
            printf("%d\t", stateTable[i]);
        }
    }
    printf("\n\n\n");
}
#endif // RBBI_DEBUG

U_NAMESPACE_END

