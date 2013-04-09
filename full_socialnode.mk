# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for zatab hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and zatab, hence its name.
#

PRODUCT_COPY_FILES += \
	device/allwinner/socialnode/kernel:kernel \
	device/allwinner/socialnode/recovery.fstab:recovery.fstab

PRODUCT_COPY_FILES += \
	device/allwinner/socialnode/ueventd.sun5i.rc:root/ueventd.sun5i.rc \
	device/allwinner/socialnode/init.target.rc:root/init.target.rc \
	device/allwinner/socialnode/config/media_profiles.xml:system/etc/media_profiles.xml 

#PRODUCT_COPY_FILES += \
#	device/softwinner/nuclear-evb/initlogo.rle:root/initlogo.rle

PRODUCT_PACKAGES := \
	TSCalibration2

PRODUCT_PROPERTY_OVERRIDES += \
        persist.sys.usb.config=mass_storage,adb \
        ro.sf.lcd_density=120 \
        ro.product.firmware=1.2 

# pre-installed apks
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*.apk,$(LOCAL_PATH)/apk,system/preinstall)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
# Inherit from our device
$(call inherit-product, device/allwinner/socialnode/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME   := full_socialnode
PRODUCT_DEVICE := socialnode
PRODUCT_BRAND  := Android
PRODUCT_MODEL  := SocialNode
