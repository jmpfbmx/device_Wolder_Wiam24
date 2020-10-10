TWRP Device Tree for Wolder Wiam 24
===========
Unoffical Build for MT6580 TWRP 
------------------

the way to do:
```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0

repo sync -c

git clone https://github.com/jmpfbmx/device_wolder_wiam24 device/wolder/wiam_24 -b twrp

. build/envsetup.sh

lunch omni_wiam_24-eng

mka recoveryimage
```

- full stable recovery twrp image (3.18.19)
