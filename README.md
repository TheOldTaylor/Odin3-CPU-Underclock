# Odin3-CPU-Underclock
Instructions and other information on how to underclock AYN Odin 3 CPU WITHOUT fully rooting device. This will still work if your device is rooted, but rooting is not required!

## Disclaimer/Pre-read
- I do not guarantee the safety of or functional benefit of using this on your device. Use at your own risk.
- This functionality was not originally discovered by me, but by u/twoohfive205 and u/JoaozaoS on reddit. Link to inspiration post: https://www.reddit.com/r/OdinHandheld/comments/1snp9xd/comment/ogphgmb/
- I have only tried this on an AYN Odin 3 with the Snapdragon 8 Elite/Dragonwing, while these exact scripts may work on any other android device with the same chipset, I haven't personally tried it. I'm sure similar scripts could be created for other chipsets as well but they would need to adhere to those specific chips' available clock settings. 

## Updates
(Apr 20 2026)
- Made a release package, no changes to files or function. Make sure to download from release to get proper files and folder sctructure. 

(Apr 19 2026 Pt. 2 lol)
- Thanks for the help again to u/twoohfive205 for the suggestions and help! This update is mostly their idea and execution. 
- Removed some of the recently added presets and reverted back to three simple presets and the reset preset. "Custom" preset has been removed as well, its function has been replaced by the updated manual tweaking process. 
- Re-organized the structure of the files. There are now two folders: "Basic Presets" and "Per Cluster Tuning". See "Manual Tweaking" Section for info.

(Apr 19 2026)
- Clarified some instructions/info. 

(Apr 18 2026)
- Updated file naming convention
- Swapped out presets with array of 9 options for variety of underclocking amounts and alternating which set of cores is underclocked. I haven't tested all of them but I'm hoping to go through each one at a time while running a game to see the relative difference in FPS, TDP, and temperatures. 

## Summary
Using the methods below, the CPU of the Odin3 can be underclocked (not to be confused with undervolted). This method simply limits the maximum clock speeds each CPU core can run at, it is not dynamic or "smart", so it does not change based on the context of what the device is doing. This will override the system's preset CPU maximum clock speed.

The most essential thing that this accomplishes is lowering the total TPD/Power consumed by the CPU which then:
- Lowers temps, which also means you can lower fan curve (my personal favorite benefit from this since my fan sounds like a garbage disposal).
- Lengthens battery life
- Allows for the GPU to "have a little more breathing room". I'm not 100% sure what exactly this does for the GPU but in some cases seen online people have stated better game performance in games that are GPU bottlenecked. It could be the GPU getting a larger share of the power and/or it could be the whole system being saved from thermal throttling, etc.
- This method should work on both rooted and un-rooted devices

## Basic Preset Values Used

| Script Name            | Cluster 0 (6 cores) | Cluster 1 (2 cores) |
|------------------------|---------------------|---------------------|
| **LargeUnderclock.sh** | 1785600 Hz          | 1958400 Hz          |
| **MedUnderclock**      | 2227200 Hz          | 2246400 Hz          |
| **SmallUnderclock.sh** | 2745600 Hz          | 3072000 Hz          |

##  How To Use Presets
1. Download the most recent .zip from the [Releases](https://github.com/TheOldTaylor/Odin3-CPU-Underclock/releases) and extract them onto your Odin 3. As of right now it doesn't seem like it matters where they are stored on the device. 
- The files are named somewhat according to the amount of underclock applied i.e. "large" = lowest overall maximum CPU clocks of the presets. "reset" = changing device settings back to factory. "All" means the underclock is applied to all cores, "C1" means only the Cluster1 cores are underclocked, etc. 
- These settings do not persist through power cycle, so if your battery dies, or you turn your device off/on, the device will boot with the original factory settings applied and you will need to run a script again to apply underclock.
- These files are .sh (shell scripts) that will tell the device how to set a specific CPU clock settings. 
2. To apply a preset, go into device settings --> "Odin settings" --> "Run script as Root" --> (Read and ignore their warning) --> "SELECT A SCRIPT"
3. Select the preset file you wish to apply that was downloaded earlier. 
4. Confirm file name selected looks correct, then click "RUN".
- The script should execute VERY quickly. You may very briefly see a window pop up that shows it's executing the script then go away. 
- There should be a confirmation bubble showing script was completed. 
5. That's it! The settings will have applied. 
- Unless you have a 3rd party app you will not be able to directly see that anything has been changed. I've been using an app called "3C All-in-One Toolbox" from the play store to confirm changes. See example picture below with aggressive underclock applied:
  <img width="722" height="867" alt="image" src="https://github.com/user-attachments/assets/d1d58f8f-7e86-4372-bc92-9965cb3ebafb" />

- Without a 3rd party app, the easiest way to tell if it's applying correctly is to swap back and forth between "aggressive" and "reset" while running something demanding on the device and notice a temperature or power consumption change. For example, while playing Rise of Tomb Raider on gamenative at 1080 max settings, I could see my consumption go from ~20W to ~14 between no underclock and aggressive underclock.
  
## Results/Observations
- So far it seems like an average of ~35% lower power consumption is being saved with minimal to no performance hit in games when using the "LargeUcAll" preset. CPU/GPU temps have also been seen to drop from 90C-100C down to 50C-60C in many cases.
- Previously I had thought that the Cluster 1 cores were the more power hungry and heat producing cores, but after feedback from others and a little more testing it seems like this may not be true/may be different based on the context. There are now 9 presets that go through a variety of combinations of underclocks that can be used to test out. Every game/task may have a preset that performs better or saves the most battery while maintaining the same performance. 

## Manual Tweaking
If you wish to manually tweak the settings presets or make your own (which is valid because I chose the preset values somewhat arbitrarily) here is some information. 
- There is a new folder structure called "Per Cluster Tuning".
- This folder contains a folder for each cluster.
- The scripts in each of these folders are designed to adjust the selected cluster's frequency without changing the other cluster's setting. 
- This should now enable those who want to tinker in detail the ability to use any combination of frequencies across the 2 clusters without needing to modify any script file content.
