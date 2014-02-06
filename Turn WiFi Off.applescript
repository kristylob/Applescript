-- Script to turn the Wi-Fi off. Used by Viscosity to disable the 
-- network connection if the VPN disconnects. 
do shell script "networksetup -setairportpower en0 off"
