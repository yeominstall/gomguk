#!/bin/bash

echo $2 > /sys/devices/system/cpu/cpu$1/cpufreq/scaling_setspeed
