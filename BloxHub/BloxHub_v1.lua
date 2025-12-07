local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local player = game.Players.LocalPlayer

local function Sea1(Window)
	
end

local function Sea2(Window)
	
end

local function Sea3(Window)
	error("teste")
end

local function BloxHub()
	local supportGame = false
	local placeId = game.PlaceId
	
	if placeId == 2753915549 then
		Sea1 = true
		supportGame = true
	elseif placeId == 4442272183 then
		Sea2 = true
		supportGame = true
	elseif placeId == 7449423635 then
		Sea3 = true
		supportGame = true
	end
		
	if not supportGame then
		Rayfield:Notify({
			Title = "Sem suporte neste jogo",
			Content = "Sem suporte neste jogo",
			Duration = 6.5,
			Image = 128942511228879,
		})
		
		wait(7)
		Rayfield:SetVisibility(false)
		Rayfield:Destroy()
	end

	local Window = Rayfield:CreateWindow({
		Name = "Blox Hub",
		Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
		LoadingTitle = "Blox Hub",
		LoadingSubtitle = "by Sirius && Pedrin",
		ShowText = "Blox Hub", -- for mobile users to unhide rayfield, change if you'd like
		Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

		ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

		DisableRayfieldPrompts = false,
		DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

		ConfigurationSaving = {
			Enabled = true,
			FolderName = nil, -- Create a custom folder for your hub/game
			FileName = "Blox Hub"
		},

		Discord = {
			Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
			Invite = "https://discord.gg/QD6TAwSt", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
			RememberJoins = true -- Set this to false to make them join the discord every time they load it up
		},

		KeySystem = false, -- Set this to true to use our key system
		KeySettings = {
			Title = "Blox Hub KeySystem",
			Subtitle = "Key System",
			Note = "A chave é gratuita, e está no nosso server do Discord", -- Use this to tell the user how to get a key
			FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
			SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
			GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
			Key = {"FREE_BloxHubKeyPedrin"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
		}
	})
	
	-- Default Tabs
	-- Home Tab
	local HomeTab = Window:CreateTab("Home Tab", 83941346515126)
	local title = HomeTab:CreateLabel("Home Tab", 83941346515126, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme
	
	
	
	if Sea1 and not Sea2 and not Sea3 then -- Sea 1
		local success = pcall(function()
			Sea1(Window)
		end)

		if not success then
			Rayfield:Notify({
				Title = "Erro na execução do script",
				Content = "Erro na execução do script, re-execute o script",
				Duration = 6.5,
				Image = 128942511228879,
			})

			wait(7)
			Rayfield:SetVisibility(false)
			Rayfield:Destroy()
		end
	elseif not Sea1 and Sea2 and not Sea3 then -- Sea 2
		local success = pcall(function()
			Sea2(Window)
		end)

		if not success then
			Rayfield:Notify({
				Title = "Erro na execução do script",
				Content = "Erro na execução do script, re-execute o script",
				Duration = 6.5,
				Image = 128942511228879,
			})

			wait(7)
			Rayfield:SetVisibility(false)
			Rayfield:Destroy()
		end
	elseif not Sea1 and not Sea2 and Sea3 then -- Sea 3
		local success = pcall(function()
			Sea3(Window)
		end)
		
		if not success then
			Rayfield:Notify({
				Title = "Erro na execução do script",
				Content = "Erro na execução do script, re-execute o script",
				Duration = 6.5,
				Image = 128942511228879,
			})

			wait(7)
			Rayfield:SetVisibility(false)
			Rayfield:Destroy()
		end
	end
end

BloxHub()
