---- Whitelist Job Changer made by Roids-Dev ----

----- I update this frequently so check back often for the latest updates -----

----- https://github.com/Roids-Dev/twprp_whitelistjobchanger -----
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
        local user = VORP.getCharacter(_source)
        local _id = user.identifier
        if not checkWhitelist(_id, jobT) then --or CheckDiscordWhitelistByGuild(_source, 'ROLE', 'GUILD') then <-- Don't touch this lol
        --print('whitelistnotworking')
        TriggerClientEvent("vorp:Tip", _source, "You don't have access to "..jobS, 5000)
    end
        if checkWhitelist(_id, jobT) then --or CheckDiscordWhitelistByGuild(_source, 'ROLE', 'GUILD') then <-- Don't touch this lol
        --print('whitelistworks')
        local _source = source
        VORP.setJob(_source, jobS)
        TriggerClientEvent("vorp:Tip", _source, "Job Changed To "..jobS, 5000)
        --print(jobS.." job set to source")
    end
end)
-- /Whitelist Check --
-------------------------------------------------
--- You know what Just dont touch anything lol---
-------------------------------------------------
-- OFFDUTY --
RegisterServerEvent('offduty')
AddEventHandler('offduty', function()
     local _source = source
    VORP.setJob(_source, "none")
    TriggerClientEvent("vorp:Tip", _source, "You are now unemployed", 5000)
    --print("Job removed from source")
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