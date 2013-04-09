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

# This file includes all definitions that apply only to socialnode devices
#
# Anything that is generic to all allwinner products should go in the common directory
#
# Everything in this directory will become public

$(call inherit-product, device/allwinner/common-sun5i/device.mk)
$(call inherit-product-if-exists, vendor/allwinner/socialnode/socialnode-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/allwinner/socialnode/overlay

# These are the hardware-specific features
#PRODUCT_COPY_FILES += \
#        frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
#        frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#

PRODUCT_COPY_FILES += \
	device/allwinner/socialnode/ueventd.sun5i.rc:root/ueventd.sun5i.rc \
	device/allwinner/socialnode/init.target.rc:root/init.target.rc \
	device/allwinner/socialnode/config/media_profiles.xml:system/etc/media_profiles.xml 

PRODUCT_COPY_FILES += \
	device/allwinner/socialnode/config/EP0430M06.idc:system/usr/idc/EP0430M06.idc \
	device/allwinner/socialnode/config/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl

