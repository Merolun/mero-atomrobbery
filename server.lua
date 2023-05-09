local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('mero-atmrobbery:server:setATMStatus', function(k)
        Config.ATMs[k].robbed = true
        Config.ATMs[k].time = Config.CoolDown
        TriggerClientEvent('mero-atmrobbery:client:setATMStatus', -1, k, true)
        SetTimeout(Config.CoolDown, function()
            Config.ATMs[k].robbed = false
            TriggerClientEvent('mero-atmrobbery:client:setATMStatus', -1, k, false)
        end)  
end)

RegisterNetEvent('mero-atmrobbery:server:setATMStatusFailed', function(k)
        Config.ATMs[k].robbed = false
        TriggerClientEvent('mero-atmrobbery:client:setATMStatus', -1, k, false)
end)

RegisterServerEvent("mero-atmrobbery:item") 
AddEventHandler("mero-atmrobbery:item", function()
	local src = source
	local xPlayer = QBCore.Functions.GetPlayer(src)
    
	if Config.ItemRewardVer then
		xPlayer.Functions.AddItem(Config.ItemReward, 1)
		TriggerClientEvent("QBCore:Notify", Lang:t("notify.item") .. Config.ItemReward)
	end
end)


RegisterServerEvent("mero-atmrobbery:removeitem") 
AddEventHandler("mero-atmrobbery:removeitem", function()
	local src = source
	local xPlayer = QBCore.Functions.GetPlayer(src)
	xPlayer.Functions.RemoveItem(Config.HashItem, 1)
end)

QBCore.Functions.CreateCallback('mero-atmrob:server:GetItem', function(source, cb, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local RadioItem = Player.Functions.GetItemByName(item)
        if RadioItem ~= nil and not Player.PlayerData.metadata["isdead"] and
            not Player.PlayerData.metadata["inlaststand"] then
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('mero-atmrob:server:policecount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers(src)
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if (player.PlayerData.job.name == 'police' and player.PlayerData.job.onduty) then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= Config.Police then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, Lang:t("notify.needpolice"), "error")
    end
end)

CreateThread(function()
    while true do
        local toSend = {}
            for k in ipairs(Config.ATMs) do
                if Config.ATMs[k].time > 0 and (Config.ATMs[k].time - Config.tickInterval) >= 0 then
                    Config.ATMs[k].time = Config.ATMs[k].time - Config.tickInterval
                else
                    if Config.ATMs[k].robbed then
                        Config.ATMs[k].time = 0
                        Config.ATMs[k].robbed = false
                        toSend[#toSend+1] = Config.ATMs[k]
                    end
                end
            end 
        if #toSend > 0 then
            TriggerClientEvent('mero-atmrobbery:client:setATMStatus', -1, toSend, false)
        end
        Wait(Config.tickInterval)
    end
end)

QBCore.Functions.CreateCallback('mero-atmrob:server:getATMStatus', function(_, cb)
        cb(Config.ATMs)
end)