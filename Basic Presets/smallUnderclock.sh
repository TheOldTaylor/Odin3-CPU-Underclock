#!/system/bin/sh
 
# Stop the services that override CPU settings
stop perfd
stop vendor.perf-hal-1-0
stop vendor.perf-hal-2-0
 
# Mild underclock
# Cluster 0 (6 cores)
chmod 666 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo 2745600 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
 
# Cluster 1 (2 Prime cores)
chmod 666 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
echo 3072000 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq