USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/tapioca_ss/BoardConfigVendor.mk

#inherit from the common tamsui definitions
-include device/sony/tamsui-common-legacy/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/tapioca_ss/include

TARGET_KERNEL_CONFIG := cyanogen_tapioca_defconfig
BOARD_KERNEL_CMDLINE := device/sony/tapioca_ss/config/cmdline.txt

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# Recovery
TARGET_RECOVERY_INITRC := device/sony/tapioca_ss/recovery/init.rc
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true


BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p16

TARGET_OTA_ASSERT_DEVICE := ST21i,tapioca_ss
