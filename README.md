# Odin3-CPU-Underclock
Instructions and other information on how to underclock AYN Odin 3 CPU WITHOUT fully rooting device. 

## Disclaimer/Pre-read
- I do not guarantee the safety of or functional benefit of using this on your device. Use at your own risk.
- I am not an expert in this category.
- This functionality was not originally discovered by me, but by "anonymous until they tell me I can put their name here" on AYN discord server. 
- Only use this if you have an AYN ODIN 3. In theory this may work with any device with the same chipset but once again I do not guarantee that there won't be issues caused by this.

## Summary
Using the methods below, the CPU of the Odin3 can be underclocked (not to be confused with undervolted). This method simply limits the maximum clock speeds each CPU core can run at, it is not dynamic or "smart". This will override the system's preset CPU maximum clock speed.

The most essential thing that this accomplishes is lowering the total TPD/Power consumed by the CPU which then:
- Lowers temps, which also means you can lower fan curve (my personal favorite benefit from this since my fan sounds like a garbage disposal).
- Lengthens battery life
- Allows for the GPU to "have a little more breathing room". I'm not 100% sure what exactly this does for the GPU but in some cases seen online people have stated better game performance in games that are GPU bottlenecked. It could be the GPU getting a larger share of the power and/or it could be the whole system being saved from thermal throttling, etc. 

##  Process/Explanation
1. Download the files from the repository and put them onto your Odin 3. As of right now it doesn't seem like it matters where they are stored on the device. 
- The files are named somewhat according to the amount of underclock applied i.e. "aggressive" = lowest overall maximum CPU clocks of the presets. "reset" = changing device settings back to factory. 
- These settings do not persist through power cycle, which means that is another method to reset these settings back to factory/you will need do this process again for underclock to apply after any power cycle.
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

## Preset Values Used
- Aggressive sets Cluster 0 cores to 1785600Hz and Cluster 1 cores to 1958400Hz
- Moderate sets Cluster 0 cores to 2227200Hz and Cluster 1 cores to 2246400Hz
- Mild sets Cluster 0 cores to 2745600Hz and Cluster 1 cores to 3072000Hz

## Manual Tweaking
If you wish to manually tweak the settings presets or make your own (which is valid because I chose the preset values somewhat arbitrarily) here is some information. 
- Inside each underclocking script there are 2 sections. One section sets the Cluster 0 cores max clocks and the other sets the Cluster 1 core max clocks.
- The second line of each section (the ones beginning with "ECHO" are where the max clock frequency is chosen. 
- IMPORTANT!!! Each set of cores has their own list of valid frequencies they can be set to. I am NOT certain of what would happen if you miss type/chose an invalid value so BEWARE. 
- I have not tried going down to the lowest available options yet myself. I also don't know what pros/cons there would be from having the max clocks for each core set being vastly different from one another. 
- Below is a picture of the custom file showing the available frequency options and where to put them.
<img width="1205" height="857" alt="image" src="https://github.com/user-attachments/assets/c7302683-8c66-47e4-a88a-eb8ccfee8359" />

## Notes/Observations
- I tried making a script with macros to allow simpler way to make custom script settings, but for some reason I could not get any versions of the script I made to work. Hopefully the provided custom template is simple enough.
- Based on some very brief testing I have done, it seems like the underclock values used for the Cluster 1 cores is where a large majority of the impact is seen, at least from a thermals stand point. Changing the clock speed of Cluster 1 alone made a pretty noticeable TDP difference, whereas changing only Cluster 0 cores clocks didn't seem to make much noticeable difference at all. 
- I also couldn't find a way to allow scripts to run automatically on boot, which should probably be a given since this is a rootless solution. 
