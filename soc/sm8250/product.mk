#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# DSP
PRODUCT_PACKAGES += \
    hexagonrpcd_adsp_rootpd_phony \
    hexagonrpcd_adsp_sensorspd_phony

# Firmware
# TODO(maintainer): add linux_firmware_qcom-a650 and the ath11k QCA6390
# packages once they exist in external/linux-firmware-mainline. Until then
# the device trees install the Adreno 650 files from their vendor trees.

# Init
PRODUCT_PACKAGES += \
    init.mainline.qcom.sm8250.rc

# Modem
# SM8250 has no internal modem; the cellular modem is an external SDX55 on
# PCIe. The QRTR daemons are packaged for the ADSP/SLPI services, but
# ro.vendor.qcom.soc.enable_modem_services stays unset until the stack has
# been tested on SM8250 hardware (docs/MODEM_STACK.md).
PRODUCT_PACKAGES += \
    qrtr-cfg \
    tqftpserv \
    tqftpserv.rc
