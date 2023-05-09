local QBCore = exports['qb-core']:GetCoreObject()
local lastTime = 0
local RobbingATM = false
local coords = {}


RegisterNetEvent("mero-rob")
AddEventHandler("mero-rob", function ()
        QBCore.Functions.TriggerCallback('mero-atmrob:server:policecount', function(status)
            if status then
                local pos = GetEntityCoords(PlayerPedId())
                local atmID = 0
	                if not RobbingATM then
		                for k,v in pairs(Config.ATMs) do
		            	    if GetDistanceBetweenCoords(pos.x, pos.y, pos.z, v.x, v.y, v.z, true) <= 0.75 then
						        coords = {
							        x = v.x, 
							        y = v.y,
							        z = v.z,
						            }
                                    atmID = k
                                break
                            end  
                        end
                        if atmID == 0 then
                            QBCore.Functions.Notify("ATM hors service", 'error', 5000) -- Message if the ATM is not in config table
                            return
                        end
                        if Config.ATMs[atmID].robbed == false then
                            QBCore.Functions.TriggerCallback('mero-atmrob:server:GetItem', function(hasItem)
                            local player = PlayerPedId()
                            local weapon = GetHashKey(Config.HashItem)
                            local hasWeapon = HasPedGotWeapon(player, weapon, false)
                            if hasWeapon then
                                RobbingATM = true
                                TriggerServerEvent('mero-atmrobbery:server:setATMStatus', atmID)
                                QBCore.Functions.Notify('Veuillez patienter..', 'success', 5000) -- Message to launch the robbery
                                local isProgressBarRunning = false
                                dispatch()
                                QBCore.Functions.Progressbar('progress', 'En cours de traitement', Config.Progressbar, false, true, {
                                disableMovement = false,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                                }, {}, {}, {}, function() 
                                    TriggerServerEvent("mero-atmrobbery:item") 
                                    QBCore.Functions.Notify('Traitement terminé', 'success', 7500) -- End of the robbery message
                                    isProgressBarRunning = false
                                end, function() 
                                    isProgressBarRunning = false
                                end)
                                isProgressBarRunning = true
                                local startPos = GetEntityCoords(PlayerPedId())
                                local beetween = math.random(3300, 5500)
                                Citizen.CreateThread(function() 
                                    while isProgressBarRunning do
                                        Citizen.Wait(beetween)
                                        if Vdist(GetEntityCoords(PlayerPedId()), startPos) > 1.5 then
                                            QBCore.Functions.Notify('Traitement annulé - Vous êtes trop éloigné', 'error') -- Message if the robbery is cancelled
                                            isProgressBarRunning = false
                                            break
                                        end
                                        TriggerServerEvent("mero-atmrobbery:item")
                                        QBCore.Functions.Notify('Vous avez obtenu 1 liasse', 'success', 7500) -- Message when an object is given 
                                    end
                                end)
                                RobbingATM = false
                                else
                                    QBCore.Functions.Notify('Vous devez sortir l\'arme nécessaire pour braquer le distributeur automatique', 'error', 5000) -- Error message if the player has not taken out the required item for the robbery 
                                end
                                RobbingATM = false
                                TriggerServerEvent('mero-atmrobbery:server:setATMStatus', atmID)
                            end)
                        else
                            QBCore.Functions.Notify('Cet ATM a déjà été braqué', 'error', 5000) --Message if the ATM has already been robbed
                        end      
                    end
                        
                end
            end)
        end)

function setupATM()
    QBCore.Functions.TriggerCallback('mero-atmrobbery:server:server:getATMStatus', function(ATM)
        for k in pairs(ATM) do
                Config.ATMs[k].robbed = ATM[k].robbed
        end
    end)
end

RegisterNetEvent('mero-atmrobbery:client:setATMStatus', function(k, bool)
        Config.ATMs[k].robbed = bool
end)

function dispatch()
	if math.random(1,100) <= Config.DispatchRate then
		exports["ps-dispatch"]:bracoatm() -- Add this export in ps-dispatch to alert police
	end
end

 exports['qb-target']:AddTargetModel(Config.AtmProps,  {
	options = {
		{
			type = "client",
			event = "mero-rob",
			icon = "fas fa-credit-card",
			label = Lang:t("label.targetlabel"),
		},
	},
	distance = 1.5,
})



