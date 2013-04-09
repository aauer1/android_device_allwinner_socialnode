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

# Use the non-open-source part, if present
-include vendor/allwinner/socialnode/BoardConfigVendor.mk

# Use the part that is common between all allwinner
include device/allwinner/common-sun5i/BoardConfig.mk

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/allwinner/socialnode/recovery_keys.c

TARGET_KERNEL_CONFIG := socialnode_defconfig
#TARGET_KERNEL_SOURCE := kernel/allwinner/lichee
BOARD_USES_UBOOT := true

# image related
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824

# recovery stuff
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_nuclear_evb
#TARGET_RECOVERY_UPDATER_LIBS :=

# Wifi related defines
BOARD_WIFI_VENDOR                := realtek
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER             := WEXT
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_rtl
BOARD_WLAN_DEVICE                := rtl8192cu

WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/8192cu.ko"
WIFI_DRIVER_MODULE_NAME          := 8192cu

TARGET_CUSTOM_WIFI := ../../hardware/realtek/wlan/wifi_realtek.c

# Wifi chipset select
# usb wifi "rtl8192cu"; sdio wifi "nanowifi"/"ar6302"/"usibcm4329"
#SW_BOARD_USR_WIFI := rtl8192cu
#SW_BOARD_USR_WIFI := rt5370
#SW_BOARD_USR_WIFI := usibcm4329
#SW_BOARD_USR_WIFI := hwmw269v2
#SW_BOARD_USR_WIFI := hwmw269v3
#SW_BOARD_USR_WIFI := bcm40181
#SW_BOARD_USR_WIFI := ar6003
#SW_BOARD_USR_WIFI := ar6302

#SW_BOARD_USES_GSENSOR_TYPE := bma250
#SW_BOARD_GSENSOR_XY_REVERT := true
#SW_BOARD_GSENSOR_DIRECT_X := true
#SW_BOARD_GSENSOR_DIRECT_Y := true
