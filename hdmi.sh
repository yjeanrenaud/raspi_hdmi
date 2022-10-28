#!/usr/bin/env bash
# yjeanrenaud
# https://github.com/yjeanrenaud/raspi_hdmi
# bash script
# turns hdmi port of Raspberry Pi on and off
shopt -s nocasematch
if [ $# -ge 1 ]
then
  case $1 in
  on)
    if [[ $(/usr/bin/env tvservice -s) == *'[TV is off]'* ]]; then
      echo " TV is off"
      #turn HDMI on
      result=$(/usr/bin/env tvservice --preferred; sudo /bin/chvt 2; sudo /bin/chvt 1)
      echo $result
    else :
      echo " TV is already on"
    fi
    ;;
  off)
    if [[ $(/usr/bin/env tvservice -s) == *'[TV is off]'* ]]; then
      echo " TV is already off"
    else :
      #turn HDMI off
      result=$(/usr/bin/env tvservice --off)
      echo $result
    fi
    ;;
  *)
    echo " turns HDMI port of the Raspberry Pi on or off. Usage: hdmi on|off"
    ;;
  esac
else
  echo " turns HDMI port of the Raspberry Pi on or off. Usage: hdmi on|off"
fi
