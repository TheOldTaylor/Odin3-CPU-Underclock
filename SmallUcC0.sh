#!/system/bin/sh
 
# Stop the services that override CPU settings
stop perfd
stop vendor.perf-hal-1-0
stop vendor.perf-hal-2-0
 
# Mild underclock on Cluster 0 only
# Cluster 0 (6 cores)
chmod 666 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo 2745600 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
 
# Cluster 1 (2 Prime cores) at max
chmod 666 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
echo 4320000 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
