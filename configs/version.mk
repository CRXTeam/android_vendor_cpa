ifneq ($ROM_VERSION_TAG,"")
        VERSION := $(CPA_VERSION_TAG)-$(CPA_VERSION_MAJOR).$(CPA_VERSION_MINOR)$(CPA_VERSION_MAINTENANCE)
else
        VERSION := $(CPA_VERSION_TAG)-$(CPA_VERSION_MAJOR).$(CPA_VERSION_MINOR)$(CPA_VERSION_MAINTENANCE)
endif

ifneq ($PA_VERSION_TAG,"")
        PA_VERSION := $(PA_VERSION_TAG)-$(PA_VERSION_MAJOR).$(PA_VERSION_MINOR)$(PA_VERSION_MAINTENANCE)
else
        PA_VERSION := $(PA_VERSION_TAG)-$(PA_VERSION_MAJOR).$(PA_VERSION_MINOR)$(PA_VERSION_MAINTENANCE)
endif

export ROM_VERSION := $(VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.pa.version=$(PA_VERSION) \
    ro.cpa.version=$(VERSION)
