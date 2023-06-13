Citizen.CreateThread(function()
    while true do
        if GetIsWidescreen() then
        else
            TriggerServerEvent("kickgambo")
        end
      Citizen.Wait(1000)
    end
end)