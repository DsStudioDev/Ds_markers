Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not HasStreamedTextureDictLoaded("marker") then
            RequestStreamedTextureDict("marker", true)
            while not HasStreamedTextureDictLoaded("marker") do
                Wait(1)
            end
        else
            local playerPos = GetEntityCoords(PlayerPedId())
            local markerPos1 = vector3(-1405.6981, -1599.1519, 1.8207)
            local markerPos2 = vector3(-1411.6720, -1587.6808, 1.8346)
            local distance1 = GetDistanceBetweenCoords(playerPos.x, playerPos.y, playerPos.z, markerPos1.x, markerPos1.y, markerPos1.z, true)
            local distance2 = GetDistanceBetweenCoords(playerPos.x, playerPos.y, playerPos.z, markerPos2.x, markerPos2.y, markerPos2.z, true)
            if distance1 < 20.0 or distance2 < 20.0 then
                DrawMarker(9, markerPos1.x, markerPos1.y, markerPos1.z, 0.0, 0.0, 0.0, 90.0, 90.0, 0.5, 1.5, 1.5, 1.1, 255, 255, 255, 255, false, false, 2, true, "marker", "marker", false)
                DrawMarker(9, markerPos2.x, markerPos2.y, markerPos2.z, 0.0, 0.0, 0.0, 90.0, 90.0, 0.5, 1.5, 1.5, 1.1, 255, 255, 255, 255, false, false, 2, true, "marker", "marker", false)
            end
        end
    end
end)
