-- Whitelist Job Changer made by Roids#9759 for TWPRP - The RedM Project - Credit to Plouffe(plouffe_jobset) for the server side code--

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

RegisterCommand('docduty', function()
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
