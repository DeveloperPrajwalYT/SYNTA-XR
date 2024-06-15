--- Ouwigahara Mobile Support

--------------------------------------------------------------------------------------------
-- IMPEROR'S SHARK HUB PREMIUM | PROJECT SLAYERS | OUWIGAHARA
--------------------------------------------------------------------------------------------
--- ANTI AFK?
repeat wait() until game:IsLoaded()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

--------- SERVICES // VARIABLES

local UIS = game:GetService("UserInputService")
        local VirtualUser = game:GetService("VirtualUser")
        local VIM =game:GetService("VirtualInputManager")
        local ReplStorage = game:GetService("ReplicatedStorage")
        local Players = game:GetService("Players")
        local Imput = game:GetService("UserInputService")
        local COREGUI = game:GetService("CoreGui")
        local LP = game:GetService("Players").LocalPlayer
        local HttpService = game:GetService("HttpService")
        local RunS = game:GetService("RunService")
        local X, Y = 0, 0
        local Mouse = LP:GetMouse()
        local GetLocalName = LP.Name
        local request = (syn and syn.request) or (http and http.request) or http_request
        local client = game:GetService("Players").LocalPlayer
        local Plr = game:GetService("Players").LocalPlayer
        local Data = game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name]
        
        local function pressKey(key)
            VIM:SendKeyEvent(true, key, false, game)
            wait()
            VIM:SendKeyEvent(false, key, false, game)
        end
        
        local function GetHuman()
            local h = LP.Character
            h = h and (h:FindFirstChild("Humanoid") or h:FindFirstChildWhichIsA("Humanoid"))
            return h or workspace.CurrentCamera.CameraSubject
        end
        
        local GramxProjectFloat = tostring(math.random(0, 100000))
        local TweenFloatVelocity = Vector3.new(0,0,0)
        function CreateTweenFloat()
            local BV = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild(GramxProjectFloat) or Instance.new("BodyVelocity")
            BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            BV.Name = GramxProjectFloat
            BV.MaxForce = Vector3.new(100000, 100000, 100000)
            BV.Velocity = TweenFloatVelocity
        end
        
        
        local function GetDistance(Endpoint)
            if typeof(Endpoint) == "Instance" then
            Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
            elseif typeof(Endpoint) == "CFrame" then
            Endpoint = Vector3.new(Endpoint.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
            end
            local Magnitude = (Endpoint - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            return Magnitude
        end
        
        
        function Tween(Endpoint)
            if typeof(Endpoint) == "Instance" then
            Endpoint = Endpoint.CFrame
            end
            local TweenFunc = {}
            local Distance = GetDistance(Endpoint)
            local TweenInfo = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance/getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = Endpoint * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
            TweenInfo:Play()
            function TweenFunc:Cancel()
            TweenInfo:Cancel()
            return false
            end
            if Distance <= 100 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Endpoint
            TweenInfo:Cancel()
            return false
            end
            return TweenFunc
        end

        function HubrisGUI()
            loadstring(game:HttpGetAsync("https://gist.github.com/NotHubris/16fbe2bf8d9563e09858c5cd2c6fafce/raw"))()    
        end

    function BeHybrid()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    -- Get the LocalPlayer
    local localPlayer = Players.LocalPlayer

    -- Set the Race value for the LocalPlayer
    ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 4
    end
        function DieInVoid()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(755, -498, 892)
        end

        function BeDemon()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
        
            -- Get the LocalPlayer
            local localPlayer = Players.LocalPlayer
        
            -- Set the Race value for the LocalPlayer
            ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 3
        end
        
        function SoundGodMode()
            _G.godmode = true
                    while _G.godmode do
                    local args = {
                        [1] = "skil_ting_asd",
                        [2] = game:GetService("Players").LocalPlayer,
                        [3] = "sound_breathing_smoke_screen",
                        [4] = 1
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S"):FireServer(unpack(args))
                    wait(1)
                    end
        end
    
        function BeSlayer()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
        
            -- Get the LocalPlayer
            local localPlayer = Players.LocalPlayer
        
            -- Set the Race value for the LocalPlayer
            ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 2
        end
        
        function BeHuman()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
        
            -- Get the LocalPlayer
            local localPlayer = Players.LocalPlayer
        
            -- Set the Race value for the LocalPlayer
            ReplicatedStorage.Player_Data[localPlayer.Name].Race.Value = 1
        end
        
        function RemoveDMG()
            local part  =  game:GetService("StarterPlayer").StarterPlayerScripts.Client_Modules.Modules.Extra.Damage_Text
        
            local part1 =  game:GetService("ReplicatedStorage").Assets.Extras.Damage_Text
        
            local part2 = game:GetService("Players").LocalPlayer.PlayerScripts.Client_Modules.Modules.Extra.Damage_Text
        
            local COINS = game:GetService("ReplicatedStorage").Assets.Extras.Coin
        
            local PARTICLES = game:GetService("ReplicatedStorage").Assets.Particles.Parts
        
            part:Destroy()
        
            part1:Destroy()
        
            part2:Destroy()
            
            COINS:Destroy()
        
            PARTICLES:Destroy()
        end

        function TitleBuff()
            local folderPath = game:GetService("Players").LocalPlayer.Player_Titles_List
        
            -- Loop through each child in the folder
            for _, child in ipairs(folderPath:GetChildren()) do
            if child:IsA("IntValue") then
           child.Value = 9999999999
           end
        end
        end
        
function SpinDemonArt()
    local args = {
        [1] = "check_can_spin_demon_art"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("To_Server"):WaitForChild("Handle_Initiate_S_"):InvokeServer(unpack(args))    
end

function EnableCHATLOGS()
    local enabled = true
            local spyOnMyself = true
            local public = false
            local publicItalics = false
            local privateProperties = {
                Color = Color3.fromRGB(0, 255, 255),
                Font = Enum.Font.SourceSansBold,
                TextSize = 18,
            }
            --////////////////////////////////////////////////////////////////
            local StarterGui = game:GetService("StarterGui")
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
            local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
            local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
            local instance = (_G.chatSpyInstance or 0) + 1
            _G.chatSpyInstance = instance
    
            local function onChatted(p, msg)
                if _G.chatSpyInstance == instance then
                    if p == player and msg:lower():sub(1, 6) == "/e spy" then
                        enabled = not enabled
                        wait(0.3)
                        privateProperties.Text = "{SPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
                        StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
                    elseif enabled and (spyOnMyself == true or p ~= player) then
                        msg = msg:gsub("[\n\r]", ''):gsub("\t", ' '):gsub("[ ]+", ' ')
                        local hidden = true
                        local conn = getmsg.OnClientEvent:Connect(function(packet, channel)
                            if packet.SpeakerUserId == p.UserId and packet.Message == msg:sub(#msg - #packet.Message + 1) and (channel == "All" or (channel == "Team" and public == false and p.Team == player.Team)) then
                                hidden = false
                            end
                        end)
                        wait(1)
                        conn:Disconnect()
                        if hidden and enabled then
                            if public then
                                saymsg:FireServer((publicItalics and "/me " or '') .. "{SPY} [" .. p.Name .. "]: " .. msg, "All")
                            else
                                privateProperties.Text = "{SPY} [" .. p.Name .. "]: " .. msg
                                StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
                            end
                        end
                    end
                end
            end
    
            for _, p in ipairs(Players:GetPlayers()) do
                p.Chatted:Connect(function(msg)
                    onChatted(p, msg)
                end)
            end
            Players.PlayerAdded:Connect(function(p)
                p.Chatted:Connect(function(msg)
                    onChatted(p, msg)
                end)
            end)
            privateProperties.Text = "{SPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
            player:WaitForChild("PlayerGui"):WaitForChild("Chat")
            StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
            wait(3)
            local chatFrame = player.PlayerGui.Chat.Frame
            chatFrame.ChatChannelParentFrame.Visible = true
            chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), chatFrame.ChatChannelParentFrame.Size.Y)
    
    end

        local function SkillBind(bind)
            pcall(function()
                VIM:SendKeyEvent(true,bind,false,game)
                task.wait()
                VIM:SendKeyEvent(false,bind,false,game)
                wait(.2)
            end)
        end
        
        function Hop()
            local PlaceID = game.PlaceId
            local AllIDs = {}
            local foundAnything = ""
            local actualHour = os.date("!*t").hour
            local Deleted = false
            function TPReturner()
                local Site;
                if foundAnything == "" then
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                else
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                end
                local ID = ""
                if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                    foundAnything = Site.nextPageCursor
                end
                local num = 0;
                for i,v in pairs(Site.data) do
                    local Possible = true
                    ID = tostring(v.id)
                    if tonumber(v.maxPlayers) > tonumber(v.playing) then
                        for _,Existing in pairs(AllIDs) do
                            if num ~= 0 then
                                if ID == tostring(Existing) then
                                    Possible = false
                                end
                            else
                                if tonumber(actualHour) ~= tonumber(Existing) then
                                    local delFile = pcall(function()
                                        AllIDs = {}
                                        table.insert(AllIDs, actualHour)
                                    end)
                                end
                            end
                            num = num + 1
                        end
                        if Possible == true then
                            table.insert(AllIDs, ID)
                            wait()
                            pcall(function()
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                            end)
                            wait(4)
                        end
                    end
                end
            end
            function Teleport() 
                while wait() do
                    pcall(function()
                        TPReturner()
                        if foundAnything ~= "" then
                            TPReturner()
                        end
                    end)
                end
            end
            Teleport()
        end
        
--------- SERVICES // KA

local function attack(method)
	wait()
	game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, 919, "ground_slash")
	wait()
    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(method, client, client.Character, client.Character.HumanoidRootPart, client.Character.Humanoid, math.huge, "ground_slash")
end
        
        local attackMethods = {
            ["Combat"] = 'fist_combat',
            ["Sword"] = 'Sword_Combat_Slash',
            ["Scythe"] = 'Scythe_Combat_Slash',
            ["Claw"] = 'claw_Combat_Slash',
            ["Fans"] = 'fans_combat_slash'
        }
        
        if game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("getclientping") then 
            game.ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("getclientping").OnClientInvoke = function() 
                task.wait(5)
                return true 
            end 
        end 

--------- LIBRARY
	
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	local Window = OrionLib:MakeWindow({Name = "SyntaXSlayers v1 PREMIUM // Project Slayers // Ouwigahara", HidePremium = true, SaveConfig = false, ConfigFolder = "SharkHubv1Ouwigahara"})
local HttpService = game:GetService("HttpService")
local WebhookURL = "" 
	local MainTab = Window:MakeTab({
		Name = "Main",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
    local OrbTab = Window:MakeTab({
		Name = "Orbs",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
    local GodModeTab = Window:MakeTab({
        Name = "God Modes",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local AutoSkill = Window:MakeTab({
        Name = "Auto Skill",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
	local SettingsTab = Window:MakeTab({
		Name = "Others",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
	local MiscTab = Window:MakeTab({
		Name = "Misc",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
	local TeleportsTab = Window:MakeTab({
		Name = "Teleports",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
	local CreditsTab = Window:MakeTab({
		Name = "Credits",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	OrionLib:MakeNotification({
		Name = "SyntaXSlayer v1",
		Content = "Project Slayers // Ouwigahara",
		Image = "rbxassetid://4483345998",
		Time = 5
	})

--------------------------------------------------------------------------------------------

--------- MAIN // FARM

	local FarmSection = MainTab:AddSection({
		Name = "Farm"
	})


	FarmSection:AddToggle({
		Name = "Auto
