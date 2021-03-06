# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/aokpub/tools/getdate)

ifneq ($(AOKPUB_BUILD),)
    # AOKPUB_BUILD=<goo version int>/<build string>
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=shiznu \
        ro.goo.rom=AOKPUB \
        ro.goo.version=$(shell echo $(AOKPUB_BUILD) | cut -d/ -f1) \
        ro.AOKPUB.version=$(TARGET_PRODUCT)_jb-mr1_$(shell echo $(AOKPUB_BUILD) | cut -d/ -f2)
else
  ifneq ($(AOKPUB_NIGHTLY),)
        # AOKPUB_NIGHTLY=true
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.aokpub.version=$(TARGET_PRODUCT)_nightly_$(DATE)
    else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.aokpub.version=$(TARGET_PRODUCT)_unofficial_$(DATE)
    endif
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
