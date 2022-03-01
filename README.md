# zigbeeflash
Docker Image to flash SONOFF Zigbee 3.0 USB Dongle Plus

## Usage

```
cd /tmp
curl -L https://github.com/rngtng/zigbeeflash/tarball/main -o main.tgz
tar -xzf main.tgz
cd rngtng-zigbeeflash-ef9fb80
docker build -t zig .
docker run -it --rm -v /dev:/dev --privileged zig bash
cd cc2538-bsl-master/
python cc2538-bsl.py --bootloader-sonoff-usb -evw --ieee-address $ADDR ../CC1352P2_CC2652P_launchpad_coordinator_20211217.hex
```

## Resources
- Enable SSH on HA OS: https://developers.home-assistant.io/docs/operating-system/debugging/#ssh-access-to-the-host
