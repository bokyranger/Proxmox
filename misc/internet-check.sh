#!/usr/bin/env bash -ex
CM="${GN}✓${CL}"
CROSS="${RD}✗${CL}"
wget -q --tries=10 --timeout=5 --spider http://google.com
if [[ $? -eq 0 ]]; then
        echo -e "${CM} Internet Online"
else
        echo -e "${CROSS} Internet Offline"
fi
# bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/internet-check.sh)"