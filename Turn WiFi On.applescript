-- Script to turn the Wi-Fi on. Used by Viscosity to enable the 
-- network connection prior to connecting the VPN. 
do shell script "networksetup -setairportpower en0 on"
