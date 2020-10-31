-- Whitelist Job Changer made by Roids#9759 for TWPRP - The RedM Project - Credit to Plouffe(plouffe_jobset) for the server side code--



-- COPDUTY --

RegisterCommand('lawman', function()
	TriggerServerEvent('copdutycheck')
end)

-- /COPDUTY --



-- DOCDUTY --

RegisterCommand('docduty', function()
    TriggerServerEvent('docdutycheck')
end)

-- /DOCDUTY --



-- OFFDUTY --

RegisterCommand('offduty', function()
    TriggerServerEvent('offduty')
end)

-- /OFFDUTY --


