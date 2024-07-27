Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		if not HasStreamedTextureDictLoaded("marker") then -- Checks if the texture has loaded
			RequestStreamedTextureDict("marker", true)
			while not HasStreamedTextureDictLoaded("marker") do -- not wait 1 mil second
				Wait(1)
			end
		else	           --pos(x)   --pos(y)  pos(z)                --roatation--   -- size -----
			DrawMarker(9, -1405.6981, -1599.1519, 1.8207, 0.0, 0.0, 0.0, 0.0, 90.0, 0.5, 1.5, 1.5, 1.1, 255, 255, 255, 255,false, false, 2, true, "marker", "marker", false)
            DrawMarker(9, -1411.6720, -1587.6808, 1.8346, 0.0, 0.0, 0.0, 0.0, 90.0, 0.5, 1.5, 1.5, 1.1, 255, 255, 255, 255,false, false, 2, true, "marker", "marker", false)           
		end
    end
end)