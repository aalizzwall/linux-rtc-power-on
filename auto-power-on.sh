#!/bin/bash

rtcPath=/sys/class/rtc/rtc0/wakealarm

#clean
echo 0 > $rtcPath

if [ `date +%w` -eq 5 ]; then
  #set next monday
  echo $(date +%s -d "next Monday 08:00") > $rtcPath
else
  #set every day
  echo $(date +%s -d "tomorrow 08:00") > $rtcPath
fi
