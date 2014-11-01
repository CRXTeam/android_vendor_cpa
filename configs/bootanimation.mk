# Copyright (C) 2014 CrystalPA Project
# Based on AOSPA
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#1920x1080
ifneq ($(filter cpa_honami cpa_bacon,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/cpa/prebuilt/bootanimation/1920x1080.zip:system/media/bootanimation.zip
endif

#1280x720
ifneq ($(filter cpa_huashan cpa_huashanlbl cpa_d605,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/cpa/prebuilt/bootanimation/1280x720.zip:system/media/bootanimation.zip
endif

#960x540
ifneq ($(filter cpa_eagle cpa_d620 cpa_w7 cpa_p760,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/cpa/prebuilt/bootanimation/960x540.zip:system/media/bootanimation.zip
endif

#800x480
ifneq ($(filter cpa_codina cpa_janice cpa_p700 cpa_705,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/cpa/prebuilt/bootanimation/800x480.zip:system/media/bootanimation.zip
endif

#480x320
ifneq ($(filter cpa_e610,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/cpa/prebuilt/bootanimation/480x320.zip:system/media/bootanimation.zip
endif