#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:8407040:4af93b7225b3a802c6cc10dba62d5dcf3d2350e0; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:7524352:784390df78e072b0af260dca31750f6254aa1458 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 4af93b7225b3a802c6cc10dba62d5dcf3d2350e0 8407040 784390df78e072b0af260dca31750f6254aa1458:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
