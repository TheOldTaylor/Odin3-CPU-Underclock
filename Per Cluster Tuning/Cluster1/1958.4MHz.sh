#!/system/bin/sh

stop perfd
stop vendor.perf-hal-1-0
stop vendor.perf-hal-2-0

chmod 666 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
echo 1958400 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
