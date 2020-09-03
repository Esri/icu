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

  files {
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
    "icu4c/source/common/ustrcase.cpp",
    "icu4c/source/common/ustrcase_locale.cpp",
    "icu4c/source/common/ustrenum.cpp",
    "icu4c/source/common/ustring.cpp",
    "icu4c/source/common/ustrtrns.cpp",
    "icu4c/source/common/utf_impl.cpp",
    "icu4c/source/common/util.cpp",
    "icu4c/source/common/utrace.cpp",
    "icu4c/source/common/utrie_swap.cpp",
    "icu4c/source/common/utrie2.cpp",
    "icu4c/source/common/uvector.cpp",
    "icu4c/source/common/wintz.cpp",
    "icu4c/source/data/icudt63_dat.c",
    "icu4c/source/extra/scrptrun/scrptrun.cpp",
  }

  local t_includedirs = {
    "icu4c/source/common",
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
    -- configuration { "winuwp_debug", "ARM" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "ARM" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "ARM" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "ARM" }

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
