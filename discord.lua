Citizen.CreateThread(function()
	while true do

	local count = 0

		for _, __ in pairs(text) do 
			count = count + 1
		end
	
		local presence  = math.random(1, count)
	
		local player = GetPlayerPed(-1)
	
		SetDiscordAppId('ID') -- Pour avoir ceci vous devez vous rendre sur discord https://discordapp.com/developers puis New Application
		SetDiscordRichPresenceAsset('logo') -- Ici le nom du logo que vous avez mis sur le site ci dessus
		SetDiscordRichPresenceAssetText('NomdevotreServeur') -- Ici c'est le nom qui s'affichera sur la photo
		SetDiscordRichPresenceAssetSmall('logo') -- Ici c'est le logo que vous aimeriez mettre en petit
		SetDiscordRichPresenceAssetSmallText('https://discord.gg/8YXZARE') -- Mettez votre discord ici
		

		
		while true do
        Citizen.Wait(1500)
        players = {}
        for i = 0, 255 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetRichPresence("‍"..GetPlayerName(PlayerId()) .. " - ID : " ..GetPlayerServerId(PlayerId()).. " - " .. #players .. "/32 Joueur") --A ne pas toucher sauf le 32 si vous avez plus de slots
	end
	
	end
end)

-- Discord RP By La Quica