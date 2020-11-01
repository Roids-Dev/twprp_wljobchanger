---- Whitelist Job Changer made by Roids-Dev ----

----- I update this frequently so check back often for the latest updates -----

----- https://github.com/Roids-Dev/twprp_whitelistjobchanger -----

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
-- SETJOB --
RegisterCommand("jobset", function(source, args)
	local _source = source
	local player = args[1]
	local job = args[2]
		if player ~= nil and job ~= nil then
    		TriggerServerEvent("twp:setjob", player, job)
		else
			TriggerEvent("vorp:Tip", "Missing arguments. Please use /jobset ID JOB", 10000)
	end
end)
-- /SETJOB --
-------------------------------------------------