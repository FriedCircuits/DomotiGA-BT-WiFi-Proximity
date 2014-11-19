DomotiGA-BT-WiFi-Proximity
==========================

Uses BT Mac and WiFi IP Address to see if a person(Device) is at home.


Installation
===============

Download file to your home directory or subdirectory. 

Edit Device config at the top of the file. You can easily add more than 2 device by copying the device config changing number on the end. Then copy a IF block for each device. The start and end are labeled. 

If needed chmod +x bluetooth.sh

In DomotiGA enable shell module if needed. Then add device as a shell interface. Then enter the path to the script and for each device\person add a number. For example.

/home/user/bluetooth.sh 1

This will check if device one is in range either via bluetooth or on the WiFi network. 

Remember for WiFi you should set a static IP in your router. 

Feedback welcome via Github issues.

