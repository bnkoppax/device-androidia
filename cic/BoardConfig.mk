# ----------------- BEGIN MIX-IN DEFINITIONS -----------------
# Mix-In definitions are auto-generated by mixin-update
##############################################################
# Source: device/intel/mixins/groups/allow-missing-dependencies/true/BoardConfig.mk
##############################################################
ALLOW_MISSING_DEPENDENCIES := true
##############################################################
# Source: device/intel/mixins/groups/audio/aic/BoardConfig.mk
##############################################################
USE_XML_AUDIO_POLICY_CONF := 1
##############################################################
# Source: device/intel/mixins/groups/cpu-arch/x86_64/BoardConfig.mk
##############################################################
TARGET_CPU_ABI := x86_64
TARGET_ARCH := x86_64
TARGET_ARCH_VARIANT := x86_64
TARGET_PRELINK_MODULE := false

TARGET_2ND_CPU_ABI := x86
TARGET_2ND_ARCH := x86
TARGET_2ND_ARCH_VARIANT := x86

TARGET_USES_64_BIT_BINDER := true
##############################################################
# Source: device/intel/mixins/groups/dexpreopt/true/BoardConfig.mk
##############################################################
# enable dex-preoptimization.
WITH_DEXPREOPT := true
##############################################################
# Source: device/intel/mixins/groups/device-specific/cic/BoardConfig.mk
##############################################################
# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

# Container related configurations
ANDROID_AS_GUEST := true

TARGET_COPY_OUT_VENDOR := system/vendor
DEVICE_MATRIX_FILE   := $(INTEL_PATH_DEVICE_CIC)/compatibility_matrix.xml
DEVICE_PACKAGE_OVERLAYS += $(INTEL_PATH_DEVICE_CIC)/overlay
BOARD_SEPOLICY_DIRS += \
        build/target/board/generic/sepolicy \
        build/target/board/generic_x86/sepolicy

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 # 2 GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
##############################################################
# Source: device/intel/mixins/groups/graphics/aic_mdc/BoardConfig.mk
##############################################################
# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
USE_OPENGL_RENDERER := true

# framework switches 
TARGET_USES_HWC2 			:= false
USE_OPENGL_RENDERER 		:= true
TARGET_HARDWARE_3D 			:= true

# global switches to use old gfx stack or master gfx stack
TARGET_USE_INTEL_LIBDRM 	:= true
TARGET_USE_INTEL_MESA 		:= true
TARGET_USE_INTEL_GRALLOC	:= true
TARGET_USE_INTEL_HWCOMPOSER	:= false

# multidroid vhal switches
TARGET_USE_GRALLOC_VHAL		:= true
TARGET_USE_HWCOMPOSER_VHAL	:= false

# components specific switches
ifeq ($(TARGET_USE_INTEL_LIBDRM), true)
TARGET_USE_PRIVATE_LIBDRM := true
LIBDRM_VER ?= intel
else
TARGET_USE_PRIVATE_LIBDRM := false
endif

BOARD_USE_MESA := true
BOARD_USE_CUSTOMIZED_MESA := true
BOARD_GPU_DRIVERS := i965

BOARD_USES_MINIGBM := true
BOARD_USES_GRALLOC1 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

ifeq ($(TARGET_USE_INTEL_HWCOMPOSER), true)
BOARD_USES_IA_HWCOMPOSER := true
BOARD_ENABLE_EXPLICIT_SYNC := true
BOARD_CURSOR_WA := true
else
BOARD_USES_IA_HWCOMPOSER := false
BOARD_ENABLE_EXPLICIT_SYNC := false
BOARD_CURSOR_WA := false
endif

TARGET_DONT_USE_NATIVE_FENCE := true

VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
##############################################################
# Source: device/intel/mixins/groups/wlan/mac80211_hwsim/BoardConfig.mk
##############################################################
BOARD_WLAN_DEVICE           := emulator
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_simulated
WPA_SUPPLICANT_VERSION      := VER_0_8_X
WIFI_DRIVER_FW_PATH_PARAM   := "/dev/null"
WIFI_DRIVER_FW_PATH_STA     := "/dev/null"
WIFI_DRIVER_FW_PATH_AP      := "/dev/null"
##############################################################
# Source: device/intel/mixins/groups/slot-ab/default/BoardConfig.mk
##############################################################
ifeq (False,efi)
# Adds edify commands swap_entries and copy_partition for robust
# update of the EFI system partition
TARGET_RECOVERY_UPDATER_LIBS := libupdater_esp
# Extra libraries needed to be rolled into recovery updater
# libgpt_static and libefivar are needed by libupdater_esp
TARGET_RECOVERY_UPDATER_EXTRA_LIBS := libcommon_recovery libgpt_static
ifeq ($(TARGET_SUPPORT_BOOT_OPTION),true)
TARGET_RECOVERY_UPDATER_EXTRA_LIBS += libefivar
endif
endif


BOARD_RECOVERYIMAGE_PARTITION_SIZE ?= 31457280
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE ?= 104857600
# ------------------ END MIX-IN DEFINITIONS ------------------
