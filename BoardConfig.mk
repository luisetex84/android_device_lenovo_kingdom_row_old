#
# Copyright (C) 2014 The CyanogenMod Project
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

BOARD_VENDOR := lenovo

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/kingdom_row/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_CONFIG := kingdom_row_defconfig
TARGET_KERNEL_SOURCE := kernel/lenovo/kingdom_row
TARGET_KERNEL_ARCH := arm

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_SMD_TTY := true
BLUETOOTH_HCI_USE_MCT := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# QCOM Power
TARGET_POWERHAL_VARIANT := qcom

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
HAVE_ADRENO_SOURCE:= false

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_qcwcn

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE          := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 20971520
BOARD_PERSISTIMAGE_PARTITION_SIZE       := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE         := 131072000
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 27439087000
BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 29957396480
BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G
BOARD_FLASH_BLOCK_SIZE                  := 131072

# Recovery
TARGET_RECOVERY_FSTAB := device/lenovo/kingdom_row/rootdir/etc/recovery.fstab
PRODUCT_COPY_FILES += device/lenovo/kingdom_row/rootdir/etc/recovery.fstab:recovery/root/etc/twrp.fstab
DEVICE_RESOLUTION := 1440x2560
BOARD_HAS_NO_REAL_SDCARD := true

# NFC
BOARD_NFC_CHIPSET := nfc-nci

# inherit from the proprietary version
ifneq ($(QCPATH),)
-include $(QCPATH)/common/msm8974/BoardConfigVendor.mk
endif

