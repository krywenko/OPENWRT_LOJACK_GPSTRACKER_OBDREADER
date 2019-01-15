# OPENWRT_LOJACK_GPSTRACKER_OBDREADER

openwrt  lojack gps tracker OBDreader
this is based on my Openwrt database controler ( Zero-Orange-Pi--MQTT-openwrt or banana pi version) . this is openwrt based "loJack"  it will work in both offline mode 
( store data on device  once in range of  wifi base upload the data to  the database server and  file directory)
or in online mode ( if a suitable Cell modem is connected to openwrt device or if linked to your cell phones hotspot)

prerequisites- on the  Openwrt
perl - install perlbase system and perlbase net
bash, rsync, gpsd, gpsd client, kmod-bluetooth, bluez-libs, bluez-utils, kmod-usb-core, kmod-usb-uhci, kmod-usb2 usbutils, 
kmod-usb-acm (0r what ever USB support required for your GPS)
python pip
and finally  pip install obd

it is using rsync to upload data  so you will need to create an autorization key for automatic uploading

it will upload all data  from luci- statistic  but you will need to change dir for collect-csv to /tmp/csv

then simple copy the files to  root dir
 and  in start up local add this
 
 hciconfig hci0 up >nul 2>&1 & echo "bluetooth stared"
 
gpsd -N -D3 -G -F /var/run/gpsd.sock /dev/ttyACM0 >nul 2>&1 & echo "gps started"

/root/./gpxtimer.sh >nul 2>&1 & echo "gpxlogger started"

/root/./START >nul 2>&1 & echo "OBD started"

the prefered device would be an orangepi Zero.  you install all devices on a powered usb hub that is wired to your car's eletrical system.


https://community.openenergymonitor.org/t/lojack-gps-tracker-obd-statistics-to-your-database/9772
