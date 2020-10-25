-- Whitelist Job Changer made by Roids#9759 for TWPRP - The RedM Project - Credit to Plouffe(plouffe_jobset) for the server side code--

-- COPDUTY --

RegisterCommand('lawman', function()
	local _source = source
	GetPlayers()
	test = GetPlayerServerId(source)
	TriggerServerEvent('copdutycheck', test)
end)

-- /COPDUTY --

-- COPDUTY --

RegisterCommand('docduty', function()
    local _source = source
    GetPlayers()
    test = GetPlayerServerId(source)
    TriggerServerEvent('docdutycheck', test)
end)

-- /COPDUTY --

-- OFFDUTY --

RegisterCommand('offduty', function()
    local _source = source
    TriggerServerEvent('offduty')
end)

-- /OFFDUTY --

-- FUNCTIONS --

function GetPlayers()
    local players = {}

    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

-- /FUNCTIONS --

-- DEBUG --

RegisterCommand('wljcdebug', function() --here for whatever you need to test --
    TriggerServerEvent('wljcdebug')
end)