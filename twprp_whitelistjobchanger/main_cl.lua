---- Whitelist Job Changer made by Roids-Dev ----

----- I update this frequently so check back often for the latest updates -----

----- https://github.com/Roids-Dev/twprp_whitelistjobchanger -----

-------------------------------------------------

-- EXAMPLE JOB --

--RegisterCommand('EXAMPLE', function()
--    local job1 = EXAMPLE
--    local job2 = 'EXAMPLE'
--    TriggerServerEvent('wlcheck', job1, job2)
--end)

-- /EXAMPLE JOB --

-------------------------------------------------

-- COPDUTY --

RegisterCommand('lawman', function()
    local job1 = police
    local job2 = 'police'
	TriggerServerEvent('wlcheck', job1, job2)
end)

-- /COPDUTY --

-------------------------------------------------

-- DOCDUTY --

RegisterCommand('doctor', function()
    local job1 = doctor
    local job2 = 'doctor'
    TriggerServerEvent('wlcheck', job1, job2)
end)

-- /DOCDUTY --

-------------------------------------------------

-- OFFDUTY --

RegisterCommand('offduty', function()
    TriggerServerEvent('offduty')
end)

-- /OFFDUTY --

-------------------------------------------------
