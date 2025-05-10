#!/usr/bin/env sh 

vss-cli --wait compute vm mk from-clib \
--memory 4 --cpu 2 \
--source ubuntu-22.04  \
--disk 50 --firmware efi \
--description 'Ubuntu 22.04 LTS with Ubuntu Pro.' \
--client EIS --os ubuntu64Guest --usage Test \
--folder <UPDATE_FOLDER> --net <UPDATE_NETWORK> --vss-service N/A \
--extra-config disk.EnableUUID=TRUE \
--network-config cloud-init/network.yaml \
--user-data cloud-init/userdata.yaml \
--power-on vss-ubuntu22-usg
