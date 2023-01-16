local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

Citizen.CreateThread(function()

    while true do 
    
        for k, playerid in pairs(GetPlayers()) do
            if xPlayer.getInventoryItem('phone') == nil then
                local phoneCount 0 xPlayer.getInventoryItem('phone').count
                if phoneCount > 0 then
                    local price = 500
                    xPlayer.removeAccountMoney('bank', price)
                    TriggerClientEvent('Phone Contract', xPlayer.source,'CHAR_CHAT_CALL', 'You have been charged $' .. price .. ' for your phone contract.', 'Phone Contract', 'Phone Contract', 'Phone Contract', 'Bill paid')
                end
            end
        end

        Citizen.Wait(10000)
    end

end)