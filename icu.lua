project "icu"

  local prj = project()
  local prjDir = prj.basedir

  -- -------------------------------------------------------------
  -- project
  -- -------------------------------------------------------------

  -- common project settings

  dofile (_BUILD_DIR .. "/3rdparty_static_project.lua")

  -- project specific settings

  uuid "6AD43549-999F-4CC9-9B46-072DA27244AC"

  flags {
    "NoPCH",
  }

  defines {
    -- Limit the number of conversions supported to only those necessary: ASCII, Latin-1, and
    -- UTF-8/UTF-16.  See ucnv_bld.cpp for a list of encodings available with each #define
    "UCONFIG_NO_LEGACY_CONVERSION",
    "UCONFIG_ONLY_HTML_CONVERSION",
	"UCONFIG_NO_SERVICE",
	"U_I18N_IMPLEMENTATION",
	"U_SHOW_CPLUSPLUS_API",
	"UCONFIG_NO_COLLATION",
	--"U_COMBINED_IMPLEMENTATION"
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
	"icu4c/source/common/locavailable.cpp",
    "icu4c/source/common/locid.cpp",
    "icu4c/source/common/loclikely.cpp",
    "icu4c/source/common/locmap.cpp",
    "icu4c/source/common/normalizer2.cpp",
    "icu4c/source/common/normalizer2impl.cpp",
    "icu4c/source/common/patternprops.cpp",
    "icu4c/source/common/propname.cpp",
    "icu4c/source/common/putil.cpp",
    "icu4c/source/common/resource.cpp",
    "icu4c/source/common/stringpiece.cpp",
    "icu4c/source/common/uarrsort.cpp",
    "icu4c/source/common/ubidi.cpp",
    "icu4c/source/common/ubidi_props.cpp",
    "icu4c/source/common/ubidiln.cpp",
    "icu4c/source/common/ubidiwrt.cpp",
    "icu4c/source/common/ucase.cpp",
    "icu4c/source/common/uchar.cpp",
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
    "icu4c/source/common/uloc.cpp",
    "icu4c/source/common/uloc_keytype.cpp",
    "icu4c/source/common/uloc_tag.cpp",
    "icu4c/source/common/umapfile.cpp",
    "icu4c/source/common/umath.cpp",
    "icu4c/source/common/umutablecptrie.cpp",
    "icu4c/source/common/umutex.cpp",
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
    "icu4c/source/common/uvector.cpp",
    "icu4c/source/common/wintz.cpp",
    "icu4c/source/data/icudt68_dat.c",
    "icu4c/source/extra/scrptrun/scrptrun.cpp",
	"icu4c/source/i18n/datefmt.cpp",
    "icu4c/source/i18n/timezone.cpp",
    "icu4c/source/i18n/calendar.cpp",
	"icu4c/source/i18n/fmtable.cpp",
    "icu4c/source/i18n/format.cpp",
    "icu4c/source/i18n/smpdtfmt.cpp",
	"icu4c/source/i18n/dtptngen.cpp",
	"icu4c/source/i18n/reldtfmt.cpp",
    "icu4c/source/i18n/windtfmt.cpp",
	"icu4c/source/i18n/simpletz.cpp",
    "icu4c/source/i18n/tznames.cpp",
	"icu4c/source/i18n/tzfmt.cpp",
    "icu4c/source/i18n/numfmt.cpp",
	"icu4c/source/i18n/gregoimp.cpp",
    "icu4c/source/i18n/olsontz.cpp",
	"icu4c/source/i18n/ucln_in.cpp",
    "icu4c/source/i18n/zonemeta.cpp",
	"icu4c/source/i18n/ucal.cpp",
    "icu4c/source/i18n/gregocal.cpp",
	"icu4c/source/i18n/buddhcal.cpp",
    "icu4c/source/i18n/taiwncal.cpp",
	"icu4c/source/i18n/japancal.cpp",
	"icu4c/source/i18n/islamcal.cpp",
	"icu4c/source/i18n/hebrwcal.cpp",
	"icu4c/source/i18n/persncal.cpp",
	"icu4c/source/i18n/chnsecal.cpp",
	"icu4c/source/i18n/indiancal.cpp",
	"icu4c/source/i18n/coptccal.cpp",
    "icu4c/source/i18n/number_decimalquantity.cpp",
	"icu4c/source/i18n/dangical.cpp",
	"icu4c/source/i18n/ethpccal.cpp",
    "icu4c/source/i18n/tztrans.cpp",
	"icu4c/source/i18n/measure.cpp",
	"icu4c/source/i18n/dtfmtsym.cpp",
	"icu4c/source/i18n/msgfmt.cpp",
	"icu4c/source/i18n/decimfmt.cpp",
	"icu4c/source/i18n/zrule.cpp",
	"icu4c/source/i18n/basictz.cpp",
	"icu4c/source/i18n/tzrule.cpp",
	"icu4c/source/i18n/fphdlimp.cpp",
	"icu4c/source/i18n/smpdtfst.cpp",
	"icu4c/source/i18n/dayperiodrules.cpp",
	"icu4c/source/i18n/number_integerwidth.cpp",
	"icu4c/source/i18n/number_fluent.cpp",
--	"icu4c/source/i18n/number_stringbuilder.cpp",
	"icu4c/source/i18n/dcfmtsym.cpp",
	"icu4c/source/i18n/utmscale.cpp",
	"icu4c/source/i18n/wintzimpl.cpp",
	"icu4c/source/i18n/dtrule.cpp",
	"icu4c/source/i18n/tznames_impl.cpp",
    "icu4c/source/i18n/numsys.cpp",
	"icu4c/source/i18n/curramt.cpp",
	"icu4c/source/i18n/rbnf.cpp",
	"icu4c/source/i18n/winnmfmt.cpp",
	"icu4c/source/i18n/number_utils.cpp",
	"icu4c/source/i18n/erarules.cpp",
	"icu4c/source/i18n/astro.cpp",
	"icu4c/source/i18n/cecal.cpp",
	"icu4c/source/i18n/rbtz.cpp",
--	"icu4c/source/i18n/double-conversion.cpp",
	"icu4c/source/i18n/tzgnames.cpp",
	"icu4c/source/i18n/measunit.cpp",
	"icu4c/source/i18n/choicfmt.cpp",
	"icu4c/source/i18n/plurrule.cpp",
	"icu4c/source/i18n/plurfmt.cpp",
	"icu4c/source/i18n/number_multiplier.cpp",
	"icu4c/source/i18n/selfmt.cpp",
	"icu4c/source/i18n/umsg.cpp",
	"icu4c/source/i18n/currunit.cpp",
	"icu4c/source/i18n/number_patternmodifier.cpp",
	"icu4c/source/i18n/numparse_parsednumber.cpp",
	"icu4c/source/i18n/currpinf.cpp",
	"icu4c/source/i18n/number_decimfmtprops.cpp",
	"icu4c/source/i18n/number_affixutils.cpp",
	"icu4c/source/i18n/numparse_impl.cpp",
	"icu4c/source/i18n/number_patternstring.cpp",
	"icu4c/source/i18n/number_mapper.cpp",
	"icu4c/source/i18n/fpositer.cpp",
	"icu4c/source/i18n/number_grouping.cpp",
	"icu4c/source/i18n/number_modifiers.cpp",
	"icu4c/source/i18n/number_formatimpl.cpp",
	"icu4c/source/i18n/number_asformat.cpp",
	"icu4c/source/i18n/number_skeletons.cpp",
	"icu4c/source/i18n/nfrule.cpp",
	"icu4c/source/i18n/nfrs.cpp",
	"icu4c/source/i18n/double-conversion-fast-dtoa.cpp",  
	"icu4c/source/i18n/decContext.cpp", 
--	"icu4c/source/i18n/numparse_stringsegment.cpp", 
	"icu4c/source/i18n/numparse_symbols.cpp",
	"icu4c/source/i18n/number_rounding.cpp", 
	"icu4c/source/i18n/number_currencysymbols.cpp", 
	"icu4c/source/i18n/numparse_scientific.cpp", 
	"icu4c/source/i18n/numparse_compositions.cpp", 
	"icu4c/source/i18n/numparse_currency.cpp", 
	"icu4c/source/i18n/numparse_validators.cpp", 
	"icu4c/source/i18n/decNumber.cpp",
	"icu4c/source/i18n/numparse_affixes.cpp",
	"icu4c/source/i18n/number_padding.cpp",
	"icu4c/source/i18n/number_notation.cpp",
	"icu4c/source/i18n/nfsubs.cpp",
	"icu4c/source/i18n/double-conversion-bignum-dtoa.cpp",
--	"icu4c/source/i18n/nounit.cpp",
	"icu4c/source/i18n/double-conversion-strtod.cpp",
	"icu4c/source/i18n/number_scientific.cpp",
	"icu4c/source/i18n/double-conversion-cached-powers.cpp",
	"icu4c/source/i18n/standardplural.cpp",
	"icu4c/source/i18n/double-conversion-bignum.cpp",
	"icu4c/source/i18n/number_longnames.cpp",
	"icu4c/source/i18n/numparse_decimal.cpp",
	"icu4c/source/i18n/number_compact.cpp",
--	"icu4c/source/i18n/double-conversion-diy-fp.cpp",
    "icu4c/source/common/parsepos.cpp",
	"icu4c/source/common/sharedobject.cpp",
	"icu4c/source/common/unifiedcache.cpp",
    "icu4c/source/common/locbased.cpp",
	"icu4c/source/common/unistr_props.cpp",
	"icu4c/source/common/unistr_titlecase_brkiter.cpp",
	"icu4c/source/common/brkiter.cpp",
	"icu4c/source/common/simpleformatter.cpp",
	"icu4c/source/common/ucurr.cpp",
	"icu4c/source/common/ulist.cpp",
	"icu4c/source/common/ustr_titlecase_brkiter.cpp",
	"icu4c/source/common/rbbi.cpp",
	"icu4c/source/common/messagepattern.cpp",
	"icu4c/source/common/filteredbrk.cpp",
	"icu4c/source/common/errorcode.cpp",
	"icu4c/source/common/uvectr32.cpp",
	"icu4c/source/common/uniset_closure.cpp",
	"icu4c/source/common/uniset_props.cpp",
	"icu4c/source/common/locdspnm.cpp",
	"icu4c/source/common/usetiter.cpp",
	"icu4c/source/common/static_unicode_sets.cpp",
	"icu4c/source/common/utext.cpp",
	"icu4c/source/common/rbbidata.cpp",
	"icu4c/source/common/ucharstriebuilder.cpp",
	"icu4c/source/common/rbbi_cache.cpp",
	"icu4c/source/common/schriter.cpp",
	"icu4c/source/common/utypes.cpp",
	"icu4c/source/common/rbbirb.cpp",
	"icu4c/source/common/ruleiter.cpp",
	"icu4c/source/common/characterproperties.cpp",
	"icu4c/source/common/uchriter.cpp",
	"icu4c/source/common/stringtriebuilder.cpp",
	"icu4c/source/common/ustack.cpp",
	"icu4c/source/common/brkeng.cpp",
	"icu4c/source/common/unistr_cnv.cpp",
	"icu4c/source/common/rbbisetb.cpp",
	"icu4c/source/common/rbbitblb.cpp",
	"icu4c/source/common/chariter.cpp",
	"icu4c/source/common/dictbe.cpp",
	"icu4c/source/common/rbbinode.cpp",
	"icu4c/source/common/uprops.cpp",
	"icu4c/source/common/dictionarydata.cpp",
	"icu4c/source/common/ucharstrie.cpp",
	"icu4c/source/common/rbbiscan.cpp",
	"icu4c/source/common/utrie2_builder.cpp",
	"icu4c/source/common/utrie.cpp",
	"icu4c/source/common/locresdata.cpp",
	"icu4c/source/common/rbbistbl.cpp",
	"icu4c/source/common/unames.cpp",
	"icu4c/source/common/localebuilder.cpp",
  }

  local t_includedirs = {
    "icu4c/source/common",
    "icu4c/source/i18n",
  }
    
  includedirs { t_includedirs }

  -- -------------------------------------------------------------
  -- configurations
  -- -------------------------------------------------------------

  if (_PLATFORM_WINDOWS) then
    -- -------------------------------------------------------------
    -- configuration { "windows" }
    -- -------------------------------------------------------------

    -- common configuration settings
buildoptions {
  "/utf-8",
  }
    dofile (_BUILD_DIR .. "/3rdparty_static_win.lua")

    -- project specific configuration settings

    -- configuration { "windows" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_LINUX) then
    -- -------------------------------------------------------------
    -- configuration { "linux" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux.lua")

    -- project specific configuration settings

    -- configuration { "linux" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Release", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Debug", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Debug", "ARM64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Release", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Release", "ARM64" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_MACOS) then
    -- -------------------------------------------------------------
    -- configuration { "macosx" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac.lua")

    -- project specific configuration settings

    -- configuration { "macosx" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_COCOA) then
    -- -------------------------------------------------------------
    -- configuration { "cocoa*" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa.lua")

    -- project specific configuration settings

    -- configuration { "cocoa*" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_arm64_release" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_sim64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_sim64_debug.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_sim64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_sim64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_sim64_release.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_sim64_release" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_x64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_x64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "cocoa_x64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_cocoa_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "cocoa_x64_release" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_IOS) then
    -- -------------------------------------------------------------
    -- configuration { "ios*" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios.lua")

    -- project specific configuration settings

    -- configuration { "ios*" }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "ios_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "ios_arm64_release" }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_debug.lua")

    -- project specific configuration settings

    -- configuration { "ios_sim64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_release.lua")

    -- project specific configuration settings

    -- configuration { "ios_sim64_release" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "android*" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android.lua")

    -- project specific configuration settings

    -- configuration { "android*" }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_armv7_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_release.lua")

    -- project specific configuration settings

    -- configuration { "android_armv7_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_x86_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "android_x86_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "android_arm64_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_x64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_x64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_x64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "android_x64_release" }

    -- -------------------------------------------------------------
  end

  if (_PLATFORM_WINUWP) then
    -- -------------------------------------------------------------
    -- configuration { "windows" }
    -- -------------------------------------------------------------
buildoptions {
  "/utf-8",
  }
    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp.lua")

    -- project specific configuration settings

    configuration { "windows" }

      defines {
        "U_PLATFORM_HAS_WINUWP_API=1", -- build ICU for winuwp
        "_CRT_SECURE_NO_WARNINGS",
      }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "ARM64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "ARM64" }

    -- -------------------------------------------------------------
  end

  if (_IS_QT) then
    -- -------------------------------------------------------------
    -- configuration { "qt" }
    -- -------------------------------------------------------------

    local qt_include_dirs = jointables(PROJECT_INCLUDE_DIRS, t_includedirs)

    -- Add additional QT include dirs
    -- table.insert(qt_include_dirs, <INCLUDE_PATH>)

    createqtfiles(project(), qt_include_dirs)

    -- -------------------------------------------------------------
  end
