# Odin3-CPU-Underclock
Instructions and other information on how to underclock AYN Odin 3 CPU WITHOUT fully rooting device. 

## Disclaimer/Pre-read
- I do not guarantee the safety of or functional benefit of using this on your device. Use at your own risk.
- I am not an expert in this category.
- This functionality was not originally discovered by me, but by "anonymous until they tell me I can put their name here" on AYN discord server. 

## Summary
Using the methods below, the CPU of the Odin3 can be underclocked (not to be confused with undervolted). This method simply limits the maximum clock speeds each CPU core can run at, it is not dynamic or "smart". This will override the system's preset CPU maximum clock speed.

The most essential thing that this accomplishes is lowering the total TPD/Power consumed by the CPU which then:
- Lowers temps, which also means you can lower fan curve (my personal favorite benefit from this since my fan sounds like a garbage disposal).
- Lenghthens battery life
- Allows for the GPU to "have a little more breathing room". I'm not 100% sure what exactly this does for the GPU but in some cases seen online people have stated better game performance in games that are GPU bottlenecked. It could be the GPU getting a larger share of the power and/or it could be the whole system being saved from thermal throttling, etc. 

##  Process/Explanation
1. Download the files from the repository and put them onto your Odin 3. As of right now it doesn't seem like it matters where they are stored on the device. 
- The files are named somewhat according to the amount of underclock applied i.e. "aggressive" = lowest overall maximum CPU clocks of the presets. "reset" = changing device settings back to factory. 
- These settings do not persist through power cycle, which means that is another method to reset these settings back to factory/you will need do this process again for underclock to apply after any power cycle.
- These files are .sh (shell scripts) that will tell the device how to set a specific CPU clock settings. 

2. To apply a preset, go into device settings --> "Odin settings" --> "Run script as Root" --> (Read and ignore their warning) --> "SELECT A SCRIPT"
3. Select the preset file you wish to apply that was downloaded earlier. 
4. Confirm file name selected looks correct, then click "RUN".
- The script should execute VERY quickly. You may very briefly see a window pop up that shows it's executing the script the go away. 
- The should be a confirmation bubble showing script was ran. 
5. That's it! The settings will have applied. 
- Unless you have a 3rd party app you will not be able to directly see that anything has been changed.
- Easiest way to tell if it's applying correctly is to swap back and forth between "aggressive" and "reset" while running something demanding on the device and notice a temperature or power consumption change. For example, while playing Rise of Tomb Raider on gamenative at 1080 max settings, I could see my consumption go from ~20W to ~14

## Manual Tweaking
If you wish to manually tweak the settings presets or make your own (which is valid because I chose the preset values somewhat arbitrarily) here is some information. 
- Inside each underclocking script there are 2 sections. One section sets the Cluster 0 cores max clocks and the other sets the Cluster 1 core max clocks.
- The second line of each section (the ones beginning with "ECHO" are where the max clock frequency is chosen. 
- IMPORTANT!!! Each set of cores has their own list of valid frequencies they can be set to. I am NOT certain of what would happen if you miss type/chose an invalid value so BEWARE. 
- I have not tried going down to the lowest available options yet myself. I also don't know what pros/cons there would be from having the max clocks for each core set being vastly different from one another. 

- Here are the values that the Cluster 0 cores can be set to:
384000, 556800, 748800, 960000, 1152000, 1363200, 1555200,
1785600, 1996800, 2227200, 2400000, 2745600, 2918400, 3072000,
3321600, 3532800
- Here are the values that the Cluster 1 cores can be set to:
1017600, 1209600, 1401600, 1689600, 1958400, 2246400, 2438400,
2649600, 2841600, 3072000, 3283200, 3513600, 3801600, 4089600,
4204800, 4320000

