---- Whitelist Job Changer made by Roids-Dev ----

----- I update this frequently so check back often for the latest updates -----

----- https://github.com/Roids-Dev/twprp_whitelistjobchanger -----
-------------------------------------------------
-------------------------------------------------
-- COPDUTY --
-------------------------------------------------
RegisterCommand("lawman", function()
        local job1 = police
        local job2 = "police"
        TriggerServerEvent("wlcheck", job1, job2)
    end)
-------------------------------------------------
-- /COPDUTY --
-------------------------------------------------
-------------------------------------------------
-- DOCDUTY --
-------------------------------------------------
RegisterCommand("doctor", function()
        local job1 = doctor
        local job2 = "doctor"
        TriggerServerEvent("wlcheck", job1, job2)
    end)
-------------------------------------------------
-- /DOCDUTY --
-------------------------------------------------
-------------------------------------------------
-- OFFDUTY --
-------------------------------------------------
RegisterCommand("offduty", function()
        TriggerServerEvent("offduty")
    end)
-------------------------------------------------
-- /OFFDUTY --
-------------------------------------------------
-------------------------------------------------
-- OTHER JOBS --
-------------------------------------------------
AddEventHandler("chatMessage", function(source, name, message)
        if string.find(message, "duty") then
            local job, removed = string.gsub(message, "duty", "")
            if checkForJob(job) then
                TriggerServerEvent("jobchange", job)
            else
                TriggerEvent("vorp:Tip", "This job does not exist!", 5000)
            end
        end
        CancelEvent()
    end)

-------------------------------------------------
-- /OTHER JOBS --
-------------------------------------------------
-------------------------------------------------
-- FUNCTIONS --
-------------------------------------------------
local function checkForJob(job)
    local _job = job
    for key, value in pairs(jobs) do
        if _job == value then
            return true
        end
    end
    return false
end
-------------------------------------------------
-- /FUNCTIONS --
-------------------------------------------------