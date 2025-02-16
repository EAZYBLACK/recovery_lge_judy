#
# Copyright 2017 The Android Open Source Project
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
#

# Release name
PRODUCT_RELEASE_NAME := judyln

#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/judyln/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := judyln
PRODUCT_NAME := omni_judyln
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG G7 ThinQ
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=judyln_lao_eea \
    BUILD_PRODUCT=judyln \
    TARGET_DEVICE=judyln
