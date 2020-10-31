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
AddEventHandler('wlcheck', function(job1, job2)
        local _source = source
        local user = VORP.getCharacter(_source)
        local _id = user.identifier
        if not checkCopWhitelist(_id, job1) then
        print('whitelistnotworking')
        TriggerClientEvent("vorp:Tip", _source, "You don't have access to "..job2, 5000)
    end
        if checkCopWhitelist(_id, job1) then
        print('whitelistworks')
        local _source = source
        VORP.setJob(_source, job2)
        TriggerClientEvent("vorp:Tip", _source, "Job Changed To "..job2, 5000)
        print(job2.." job set to source")
    end
end)
-- /Whitelist Check --
-------------------------------------------------
---- You know what it's probably best you just dont touch anything in this file lol ----
-------------------------------------------------
-- OFFDUTY --
RegisterServerEvent('offduty')
AddEventHandler('offduty', function()
     local _source = source
    VORP.setJob(_source, "none")
    TriggerClientEvent("vorp:Tip", _source, "You are now unemployed", 5000)
    print("Job removed from source")
end)
-- /OFFDUTY --
-------------------------------------------------