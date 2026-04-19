#!/system/bin/sh

# Restore stock max frequencies
# Cluster 0 (6 cores)
chmod 666 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo 3532800 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq

# Cluster 1 (2 Prime cores)
chmod 666 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
echo 4320000 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq

# Restart vendor performance services
start perfd
start vendor.perf-hal-1-0
start vendor.perf-hal-2-0
