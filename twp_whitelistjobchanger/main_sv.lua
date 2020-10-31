VORP = exports.vorp_core:vorpAPI()


-- Functions --
local function checkCopWhitelist(id, job)
    for key, value in pairs(police) do
        if id == value then
            return true
        end
    end 
    return false
end

local function checkDocWhitelist(id, job)
    for key, value in pairs(doctor) do
        if id == value then
            return true
        end
    end 
    return false
end
-- /Functions --








-- Copduty --
RegisterServerEvent('copdutycheck')
AddEventHandler('copdutycheck', function()
local _source = source
local user = VORP.getCharacter(_source)
local _id = user.identifier
if not checkCopWhitelist(_id) then
    print('whitelistnotworking')
end
if checkCopWhitelist(_id) then
    print('whitelistworks')
    local _source = source
    VORP.setJob(_source, "police")
    TriggerClientEvent("vorp:Tip", _source, "Job Changed To Police", 5000)
    print("Police job set to source")
end

end)

-- /Copduty --

-- Docduty --
RegisterServerEvent('docdutycheck')
AddEventHandler('docdutycheck', function()
local _source = source
local user = VORP.getCharacter(_source)
local _id = user.identifier
if not checkDocWhitelist(_id) then
    print('whitelistnotworking')
end
if checkDocWhitelist(_id) then
    print('whitelistworks')
    local _source = source
    VORP.setJob(_source, "doctor")
    TriggerClientEvent("vorp:Tip", _source, "Job Changed To Doctor", 5000)
    print("Doctor job set to source")
end

end)

-- /Docduty --

-- OFFDUTY --

RegisterServerEvent('offduty')
AddEventHandler('offduty', function()
     local _source = source
    VORP.setJob(_source, "none")
    TriggerClientEvent("vorp:Tip", _source, "You are now unemployed", 5000)
    print("Job removed from source")
end)

-- /OFFDUTY --


