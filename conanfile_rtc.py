from conans import ConanFile


class ICUConan(ConanFile):
    name = "icu"
    version = "63.1"
    url = "https://github.com/Esri/icu/tree/runtimecore"
    license = "https://github.com/Esri/icu/blob/runtimecore/icu4c/LICENSE"
    description = "International Components for Unicode."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/icu/"

        # headers
        self.copy("*.h*", src=base + "icu4c/source/common", dst=relative + "icu4c/source/common")
        self.copy("scrptrun.h", src=base + "icu4c/source/extra/scrptrun", dst=relative + "icu4c/source/extra/scrptrun")
        self.copy("*.h*", src=base + "icu4c/source/i18n/unicode", dst=relative + "icu4c/source/i18n/unicode")
        self.copy("*.h*", src=base + "icu4c/source/io/unicode", dst=relative + "icu4c/source/io/unicode")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
