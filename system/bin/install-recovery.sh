#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14206186:f43b33bbb26733e05fc926109ad18062d26fb025; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8686822:181aefaf1ef5e4082c1f87230a1e68729a752812 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery f43b33bbb26733e05fc926109ad18062d26fb025 14206186 181aefaf1ef5e4082c1f87230a1e68729a752812:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
