# twprp_wljobchanger
 Made by Roids#9757 for The Wack Pack RP

As is there are only 3 commands. `/lawman - changes job to police`, `/doctor - changes job to doctor`, `/offduty - changes job to VORP default job(none)`

# Installation
- Add `twprp_wljobchanger` to your resources folder
- Add `ensure twprp_wljobchanger` to your `server.cfg`

# Use
 TEMPLATES FOR THE `config.lua` and `main_cl.lua` CAN BE FOUND INSIDE THEIR FILE

- Add a new table with whatever you want the job to be called inside the `config.lua`
- Inside the table you can add the persons steamid64 in hex **MUST BE ALL LOWERCASE**. This person is now whitelisted
- In the `main_cl.lua` add a new `RegisterCommand` for the job you created in the config
- Lastly just have the person use the command you created in `main_cl.lua`


# To Do
- Add Discord role integration(waiting on RedM to pull discord ids lel)

# Done (from "To Do")
- Streamline the server side to only use one function and event for all jobs(would you look at that didnt need discord after all lmao)

# Notes
- The discord role integration is currently built into the script but it will not work until RedM supports discord like FiveM does. However if/when this does happen it will require the `discord_perms` resource to be running on your server as well as the discord bot. When the day comes just simply remove the comments on the discord related lines and change where it says `ROLE` and `GUILD` to match your `discord_perms` Config and everything should work fine!
