#!/bin/sh
#Created by William Garrido
#Nov-19-2014
#http://mobilewill.us
#CC-BY-SA
#Bluetooth name, see if device is around if we can lookup the name
#As a backup also check for Wifi connection from device. 
#DEVICE Bluetooth device name
#DEVICEMAC Bluetooth MAC Address
#DEVICEIP IP of device when on WiFi. Should be set as static in your router


#Device 1 Settings
DEVICE1="Android"
DEVICEMAC1="00:00:00:00:00:00"
DEVICEIP1="192.168.0.000"

#Device 2 Settings
DEVICE2="iPhone"
DEVICEMAC2="00:00:00:00:00:00"
DEVICEIP2="192.168.0.000"

#Device 1 Start
if [ "$1" -eq 1 ]; then
        BTNAME=$(hcitool name $DEVICEMAC1)
        ping -c 1 $DEVICEIP1 > /dev/null 2>&1
        STATUS=$?
        if [ "$BTNAME" = "$DEVICE1" -o $STATUS -ne 1 ]; then
                echo "Present"
        else 
                echo "Away"
        fi
#Device 1 End

#Device 2 Start
elif [ "$1" -eq 2 ]; then
        BTNAME=$(hcitool name $DEVICEMAC2)
        ping -c 1 $DEVICEIP2 > /dev/null 2>&1
        STATUS=$?
        if [ "$BTNAME" = "$DEVICE2" -o $STATUS -ne 1 ]; then  
                echo "Present"
        else 
                echo "Away"
        fi
fi
#Device 2 End
