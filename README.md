# twprp_whitelistjobchanger
 Made by Roids#9757 for The Wack Pack RP - RedM Project



 Not sure if ill release this but ya know

In the event I do release it here's how to use it


Adding it to your server:
- Add twp_whitelistjobchanger to your resources folder
- Add `ensure twp_whitelistjobchanger` to your `server.cfg`

Creating a NEW whitelisted job:
- Add a new array with whatever you want the job to be called inside the `config.lua`
- Inside the array you can add the persons steamid64 in hex. This person is now whitelisted
- In the `main_cl.lua` add a new `RegisterCommand` for the job you created in the config
- In the `main_sv.lua` you will need to add a new function and event for the new job
- Make sure you make any changes needed to the events and functions to match the new job
- Lastly just have the person use the command you created in `main_cl.lua`