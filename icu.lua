project "icu"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "6AD43549-999F-4CC9-9B46-072DA27244AC"
defines {
  -- Limit the number of conversions supported to only those necessary: ASCII, Latin-1, and
  -- UTF-8/UTF-16.  See ucnv_bld.cpp for a list of encodings available with each #define
  "UCONFIG_NO_LEGACY_CONVERSION",
  "UCONFIG_ONLY_HTML_CONVERSION",
  "UCONFIG_NO_SERVICE",
  "U_I18N_IMPLEMENTATION",
  "U_SHOW_CPLUSPLUS_API",
}
includedirs {
  "icu4c/source/common",
  "icu4c/source/i18n",
}
files {
  "icu4c/source/common/**.h",
  "icu4c/source/i18n/**.h",
  "icu4c/source/extra/scrptrun/scrptrun.h",

  "icu4c/source/common/appendable.cpp",
  "icu4c/source/common/bmpset.cpp",
  "icu4c/source/common/bytesinkutil.cpp",
  "icu4c/source/common/bytestream.cpp",
  "icu4c/source/common/bytestrie.cpp",
  "icu4c/source/common/charstr.cpp",
  "icu4c/source/common/cmemory.cpp",
  "icu4c/source/common/cstring.cpp",
  "icu4c/source/common/edits.cpp",
  "icu4c/source/common/loadednormalizer2impl.cpp",
  "icu4c/source/common/localebuilder.cpp",
  "icu4c/source/common/locdispnames.cpp",
  "icu4c/source/common/locid.cpp",
  "icu4c/source/common/loclikely.cpp",
  "icu4c/source/common/locmap.cpp",
  "icu4c/source/common/locresdata.cpp",
  "icu4c/source/common/normalizer2.cpp",
  "icu4c/source/common/normalizer2impl.cpp",
  "icu4c/source/common/patternprops.cpp",
  "icu4c/source/common/propname.cpp",
  "icu4c/source/common/putil.cpp",
  "icu4c/source/common/resource.cpp",
  "icu4c/source/common/sharedobject.cpp",
  "icu4c/source/common/stringpiece.cpp",
  "icu4c/source/common/uarrsort.cpp",
  "icu4c/source/common/ubidi.cpp",
  "icu4c/source/common/ubidi_props.cpp",
  "icu4c/source/common/ubidiln.cpp",
  "icu4c/source/common/ubidiwrt.cpp",
  "icu4c/source/common/ucase.cpp",
  "icu4c/source/common/uchar.cpp",
  "icu4c/source/common/ucharstrie.cpp",
  "icu4c/source/common/ucharstrieiterator.cpp",
  "icu4c/source/common/ucln_cmn.cpp",
  "icu4c/source/common/ucmndata.cpp",
  "icu4c/source/common/ucnv.cpp",
  "icu4c/source/common/ucnv_bld.cpp",
  "icu4c/source/common/ucnv_cb.cpp",
  "icu4c/source/common/ucnv_cnv.cpp",
  "icu4c/source/common/ucnv_ct.cpp",
  "icu4c/source/common/ucnv_err.cpp",
  "icu4c/source/common/ucnv_ext.cpp",
  "icu4c/source/common/ucnv_io.cpp",
  "icu4c/source/common/ucnv_u8.cpp",
  "icu4c/source/common/ucnv_u16.cpp",
  "icu4c/source/common/ucnvlat1.cpp",
  "icu4c/source/common/ucol_swp.cpp",
  "icu4c/source/common/ucptrie.cpp",
  "icu4c/source/common/udata.cpp",
  "icu4c/source/common/udatamem.cpp",
  "icu4c/source/common/udataswp.cpp",
  "icu4c/source/common/uenum.cpp",
  "icu4c/source/common/uhash.cpp",
  "icu4c/source/common/uinvchar.cpp",
  "icu4c/source/common/uiter.cpp",
  "icu4c/source/common/ulist.cpp",
  "icu4c/source/common/uloc.cpp",
  "icu4c/source/common/uloc_keytype.cpp",
  "icu4c/source/common/uloc_tag.cpp",
  "icu4c/source/common/umapfile.cpp",
  "icu4c/source/common/umath.cpp",
  "icu4c/source/common/umutablecptrie.cpp",
  "icu4c/source/common/umutex.cpp",
  "icu4c/source/common/unifiedcache.cpp",
  "icu4c/source/common/unifilt.cpp",
  "icu4c/source/common/unifunct.cpp",
  "icu4c/source/common/uniset.cpp",
  "icu4c/source/common/unisetspan.cpp",
  "icu4c/source/common/unistr.cpp",
  "icu4c/source/common/unistr_case.cpp",
  "icu4c/source/common/unistr_case_locale.cpp",
  "icu4c/source/common/uobject.cpp",
  "icu4c/source/common/uresbund.cpp",
  "icu4c/source/common/uresdata.cpp",
  "icu4c/source/common/uset.cpp",
  "icu4c/source/common/usetiter.cpp",
  "icu4c/source/common/uscript_props.cpp",
  "icu4c/source/common/ustr_cnv.cpp",
  "icu4c/source/common/ustrcase.cpp",
  "icu4c/source/common/ustrcase_locale.cpp",
  "icu4c/source/common/ustrenum.cpp",
  "icu4c/source/common/ustrfmt.cpp",
  "icu4c/source/common/ustring.cpp",
  "icu4c/source/common/ustrtrns.cpp",
  "icu4c/source/common/utf_impl.cpp",
  "icu4c/source/common/util.cpp",
  "icu4c/source/common/utrace.cpp",
  "icu4c/source/common/utrie_swap.cpp",
  "icu4c/source/common/utrie2.cpp",
  "icu4c/source/common/utypes.cpp",
  "icu4c/source/common/uvector.cpp",
  "icu4c/source/common/uvectr32.cpp",
  "icu4c/source/common/uvectr64.cpp",
  "icu4c/source/common/wintz.cpp",
  "icu4c/source/i18n/bocsu.cpp",
  "icu4c/source/i18n/coleitr.cpp",
  "icu4c/source/i18n/coll.cpp",
  "icu4c/source/i18n/collation.cpp",
  "icu4c/source/i18n/collationbuilder.cpp",
  "icu4c/source/i18n/collationcompare.cpp",
  "icu4c/source/i18n/collationdata.cpp",
  "icu4c/source/i18n/collationdatareader.cpp",
  "icu4c/source/i18n/collationdatawriter.cpp",
  "icu4c/source/i18n/collationfastlatin.cpp",
  "icu4c/source/i18n/collationfcd.cpp",
  "icu4c/source/i18n/collationiterator.cpp",
  "icu4c/source/i18n/collationkeys.cpp",
  "icu4c/source/i18n/collationsets.cpp",
  "icu4c/source/i18n/collationsettings.cpp",
  "icu4c/source/i18n/collationroot.cpp",
  "icu4c/source/i18n/collationtailoring.cpp",
  "icu4c/source/i18n/rulebasedcollator.cpp",
  "icu4c/source/i18n/sortkey.cpp",
  "icu4c/source/i18n/ucln_in.cpp",
  "icu4c/source/i18n/ucol.cpp",
  "icu4c/source/i18n/ucol_res.cpp",
  "icu4c/source/i18n/uitercollationiterator.cpp",
  "icu4c/source/i18n/utf16collationiterator.cpp",
  "icu4c/source/i18n/utf8collationiterator.cpp",
  "icu4c/source/data/icudt70_dat.c",
  "icu4c/source/extra/scrptrun/scrptrun.cpp",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_COCOA) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
  buildoptions {
    "/utf-8",
  }
end

if (_PLATFORM_WINUWP) then
  defines {
    "U_PLATFORM_HAS_WINUWP_API=1", -- build ICU for winuwp
    "_CRT_SECURE_NO_WARNINGS",
  }
  buildoptions {
    "/utf-8",
  }
end
