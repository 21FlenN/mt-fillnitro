QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()
        -- ottos
    exports['qb-target']:AddBoxZone("enchernitroottos", vector3(831.21, -824.15, 26.33), 0.6, 0.6, {
        name = "enchernitroottos",
        heading = 359,
        minZ=22.53,
        maxZ=26.53,
    }, {
        options = {
            {
                event = "mt-fillnitro:checaritem", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
                icon = 'fas fa-fill', -- This is the icon that will display next to this trigger option
                label = 'Encher nitro', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
                job = 'ottos', -- This is the job, this option won't show up if the player doesn't have this job, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},      
            }
        },
        distance = 1.5
    })
    --6str
    exports['qb-target']:AddBoxZone("enchernitro6star", vector3(137.54, -3051.31, 7.04), 0.6, 0.6, {
        name = "enchernitro6star",
        heading = 0,
        minZ=3.24,
        maxZ=7.24,
    }, {
        options = {
            {
                event = "mt-fillnitro:checaritem", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
                icon = 'fas fa-fill', -- This is the icon that will display next to this trigger option
                label = 'Encher nitro', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
                job = '6star', -- This is the job, this option won't show up if the player doesn't have this job, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},      
            }
        },
        distance = 1.5
    })
    -- hayes
    exports['qb-target']:AddBoxZone("enchernitrohayes", vector3(-1421.65, -446.63, 35.91), 0.6, 0.6, {
        name = "enchernitrohayes",
        heading = 33,
        minZ=32.11,
        maxZ=36.11,
    }, {
        options = {
            {
                event = "mt-fillnitro:checaritem", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
                icon = 'fas fa-fill', -- This is the icon that will display next to this trigger option
                label = 'Encher nitro', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
                job = 'hayes', -- This is the job, this option won't show up if the player doesn't have this job, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},      
            }
        },
        distance = 1.5
    })
end)

RegisterNetEvent('mt-fillnitro:checaritem', function()
    QBCore.Functions.TriggerCallback('mt-fillnitro:server:tensoitemdonitro', function(HasItems)
        if HasItems then
            local success = exports['qb-phone']:PhoneNotification('Encher o nitro', 'Encher o nitro por 2 gne?', "fas fa-fill", "#25D366", '10000', 'fas fa-check-circle', 'fas fa-times-circle')
            if success then
                exports["rpemotes"]:EmoteCommandStart('mechanic4')
                QBCore.Functions.Progressbar('teste', 'A encher o nitro', 2500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    exports["rpemotes"]:EmoteCommandStart('c')
                    TriggerServerEvent('mt-fillnitro:server:tenscrypto')
                end, function ()
                end)
            end
        else
            TriggerEvent('QBCore:Notify', 'Não tens uma garrafa de nitro ou um telefone', 'error')
        end
    end)
end)