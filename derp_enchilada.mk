#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2021 The Evolution X Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from enchilada device
$(call inherit-product, device/oneplus/enchilada/device.mk)

# Inherit some common Derp stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := derp_enchilada
PRODUCT_DEVICE := enchilada
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus6 \
    PRODUCT_NAME=OnePlus6
