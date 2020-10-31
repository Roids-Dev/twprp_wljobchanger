# twprp_whitelistjobchanger
 Made by Roids#9757 for The Wack Pack RP RedM Server



Congrats you found this! I'm not going to be posting this anywhere( so please return the favor by keeping it to yourself also 😊 ) but since you found it, here you go lol! 

Fair warning: The odds of me breaking this repo are VERY high lol So please keep that in mind. If there are any issues at the time of you downloading it please either dm me on discord or open up an issue here lol


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


To Do:
- Add Discord role integration(waiting on RedM to pull discord ids lel)
- Streamline the server side to only use one function and event for all jobs(probably won't happen until discord role integration because im lazy like that lol)
