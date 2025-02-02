# Copyright (C) 2017 The Pure Nexus Project
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

# Prebuilt apps
$(call inherit-product-if-exists, vendor/reaper/prebuilt/prebuilt.mk)

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/reaper/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/reaper/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/reaper/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/reaper/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/reaper/prebuilt/bin/sysinit:system/bin/sysinit

# Reaper-specific init file
PRODUCT_COPY_FILES += \
    vendor/reaper/prebuilt/etc/init.reaper.rc:root/init.reaper.rc

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true
