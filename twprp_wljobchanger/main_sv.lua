---- Whitelist Job Changer made by Roids-Dev ----

----- I update this frequently so check back often for the latest updates -----

----- https://github.com/Roids-Dev/twprp_wljobchanger -----
-------------------------------------------------
VORP = exports.vorp_core:vorpAPI()
-------------------------------------------------
---- Don't touch this or you'll break it lol ----
-------------------------------------------------
-- Functions --
local function checkWhitelist(id, job)
    local _job = job
    for key, value in pairs(_job) do
        if id == value then
            return true
        end
    end 
    return false
end
-- /Functions --
-------------------------------------------------
---- Don't touch this part either ight?  lol ----
-------------------------------------------------
-- Whitelist Check --
RegisterServerEvent('wlcheck')
AddEventHandler('wlcheck', function(jobT, jobS)
        local _source = source
        local User = VorpCore.getUser(_source)
        local Character = User.getUsedCharacter
        local _id = Character.identifier
        if not checkWhitelist(_id, jobT) then --or CheckDiscordWhitelistByGuild(_source, 'ROLE', 'GUILD') then <-- Don't touch this comment lol
        TriggerClientEvent("vorp:Tip", _source, "You don't have access to "..jobS, 5000)
    end
        if checkWhitelist(_id, jobT) then --or CheckDiscordWhitelistByGuild(_source, 'ROLE', 'GUILD') then <-- Don't touch this comment lol
        local _source = source
        Character.setJob(jobS)
        TriggerClientEvent("vorp:Tip", _source, "Job Changed To "..jobS, 5000)
        print(jobS.." job set to source")
    end
end)
-- /Whitelist Check --
-------------------------------------------------
-- SETJOB --
RegisterCommand("setjob", function(source, args)
    local _source = source
    local player = args[1]
    local job = args[2]
        if player ~= nil and job ~= nil then
            local User = VorpCore.getUser(source)
            local Character = VorpCore.getUser(player).getUsedCharacter
             if User.getGroup == "admin" then
                Character.setJob(job)
                TriggerClientEvent("vorp:TipBottom", player, 'Your job has been set to '..job, 10000)
                TriggerClientEvent("vorp:TipBottom", _source, 'Users job has been set to '..job, 10000)
            elseif User.getGroup ~= "admin" then
                TriggerClientEvent("vorp:Tip", _source, "You do not have permission to use this command!", 10000)
            else
                TriggerClientEvent("vorp:Tip", _source, "Missing arguments. Please use /jobset ID JOB", 10000)
        end
    end
end)
-- /SETJOB --
-------------------------------------------------
--- You know what Just dont touch anything lol---
-------------------------------------------------
-- OFFDUTY --
RegisterServerEvent('offduty')
AddEventHandler('offduty', function()
     local _source = source
     local User = VorpCore.getUser(source)
     local Character = User.getUsedCharacter
    Character.setJob('none')
    TriggerClientEvent("vorp:Tip", _source, "You are now unemployed", 5000)
    print("Job removed from source ".._source)
end)
-- /OFFDUTY --
-------------------------------------------------
---Why are you still reading this? Go home lol---
-------------------------------------------------
--- Adding this now but it wont work just yet ---
-------------------------------------------------
--local function CheckDiscordWhitelistByGuild(src, role, guild)
--    return exports.discord_perms:IsRolePresentByGuild(src, role, guild)
--end
-------------------------------------------------
--- Maybe one day this will work, but not yet ---
-------------------------------------------------
-- DEBUG --
-------------------------------------------------
-- Might put something here in the future  idk --
-------------------------------------------------
-- /DEBUG --
-------------------------------------------------