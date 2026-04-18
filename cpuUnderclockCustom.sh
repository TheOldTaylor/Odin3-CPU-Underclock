#!/system/bin/sh
 
# Stop the services that override CPU settings
stop perfd
stop vendor.perf-hal-1-0
stop vendor.perf-hal-2-0

##############################################################################
# Cluster 0 Frequency Options
# 384000, 556800, 748800, 960000, 1152000, 1363200, 1555200,
# 1785600, 1996800, 2227200, 2400000, 2745600, 2918400, 3072000,
# 3321600, 3532800

# REPLACE THE "3532800" VALUE BELOW WITH DESIRED OPTION FOR CLUSTER 0

# Cluster 0 (6 cores)
chmod 666 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo 3532800 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq

##############################################################################

# Cluster 1 Frequency Options 
# 1017600, 1209600, 1401600, 1689600, 1958400, 2246400, 2438400,
# 2649600, 2841600, 3072000, 3283200, 3513600, 3801600, 4089600,
# 4204800, 4320000

# REPLACE THE "4320000" VALUE BELOW WITH DESIRED OPTION FOR CLUSTER 1

# Cluster 1 (2 Prime cores)
chmod 666 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
echo 4320000 > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq
