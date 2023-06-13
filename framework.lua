if Config.framework == "ESX" then
    ESX = nil

    Citizen.CreateThread(function()
        while ESX == nil do
            ESX = exports["es_extended"]:getSharedObject()
            Citizen.Wait(0)
        end
    end)
elseif Config.framework == "OLDESX" then
    ESX = nil

    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(0)
        end
    end)
end
