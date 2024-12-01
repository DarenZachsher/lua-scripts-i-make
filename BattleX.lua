print("🔥 - Made by Daren")
print("⌛ - v1.0.0")
print("🔐 - Press 0 To close this Script")
print("⚠ - It is Risky to use BattleX In Public Servers.")
print("🎥 - Press LeftControl + P To enter Freecam!")
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://7388737421"
sound.Volume = 0.1
sound.Parent = game.Players.LocalPlayer.PlayerGui
sound:Play()
game.Debris:AddItem(sound,5)
wait(1)
local UIS = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local cd = false
local close = false
local oldpos
local target
local UI = Instance.new("ScreenGui")
UI.Parent = plr.PlayerGui
UI.Name = "Daren's Ui"
UI.Enabled = true
function playanim(id,length)
	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://"..id
	local panim = plr.Character.Humanoid:LoadAnimation(anim)
	panim:Play()
	coroutine.resume(coroutine.create(function()
		wait(length)
		for _, animTrack in pairs(plr.Character.Humanoid:GetPlayingAnimationTracks()) do

			animTrack:Stop()

		end
	end))
end
local hiddenframe = Instance.new("Frame")
hiddenframe.Name = "HiddenFrame"
hiddenframe.Position = UDim2.new(0, 0,0, 0)
hiddenframe.Size = UDim2.new(0, 100,0, 100)
hiddenframe.BackgroundTransparency = 1
hiddenframe.Parent = UI
hiddenframe.Visible = true
local mainframe = Instance.new("Frame")
mainframe.Name = "MainFrame"
mainframe.Position = UDim2.new(0.548, 0,2.144, 0)
mainframe.Size = UDim2.new(0, 326,0, 256)
mainframe.BackgroundTransparency = 0.25
mainframe.Parent = hiddenframe
mainframe.Visible = true
mainframe.Selectable = true
mainframe.Active = true
mainframe.Draggable = true
mainframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
local playerlistframe = Instance.new("ScrollingFrame")
playerlistframe.Name = "PlayerList"
playerlistframe.Position = UDim2.new(1.003, 0,0, 0)
playerlistframe.Size = UDim2.new(0, 99,0, 256)
playerlistframe.BackgroundTransparency = 0.25
playerlistframe.Parent = mainframe
playerlistframe.Visible = true
playerlistframe.CanvasSize = UDim2.new(0, 0,5, 0)
playerlistframe.BackgroundColor3 = Color3.fromRGB(51, 53, 93)
playerlistframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
local uigridlayout = Instance.new("UIGridLayout")
uigridlayout.Parent = playerlistframe
uigridlayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
uigridlayout.VerticalAlignment = Enum.VerticalAlignment.Top
uigridlayout.CellSize = UDim2.new(0, 100,0, 40)
local targethim = Instance.new("TextButton")
targethim.Name = "TargetHim"
targethim.Text = "TARGET PLAYER"
targethim.Position = UDim2.new(1.006, 0,1, 0)
targethim.Size = UDim2.new(0, 94,0, 50)
targethim.Parent = mainframe
targethim.Visible = true
targethim.TextScaled = true
targethim.BackgroundColor3 = Color3.fromRGB(51, 53, 93)
targethim.BorderColor3 = Color3.fromRGB(27, 42, 53)
targethim.TextColor3 = Color3.fromRGB(83, 96, 139)
local allcharanim = Instance.new("TextButton")
allcharanim.Name = "allcharanim"
allcharanim.Text = "ALL CHARACTER ANIM (CLICK)"
allcharanim.Position = UDim2.new(0.001, 0,-0.2, 0)
allcharanim.Size = UDim2.new(0, 94,0, 50)
allcharanim.Parent = mainframe
allcharanim.Visible = true
allcharanim.TextScaled = true
allcharanim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
allcharanim.BorderColor3 = Color3.fromRGB(27, 42, 53)
allcharanim.TextColor3 = Color3.fromRGB(255,255,255)
local antilag = Instance.new("TextButton")
antilag.Name = "ANTILAG"
antilag.Text = "ANTI-LAG"
antilag.Position = UDim2.new(0.368, 0,1, 0)
antilag.Size = UDim2.new(0, 205,0, 50)
antilag.Parent = mainframe
antilag.Visible = true
antilag.TextScaled = true
antilag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
antilag.BorderColor3 = Color3.fromRGB(27, 42, 53)
antilag.TextColor3 = Color3.fromRGB(255,255,255)
local rpl = Instance.new("TextButton")
rpl.Name = "RPL"
rpl.Text = "Refresh Player List"
rpl.Position = UDim2.new(1.012, 0,-0.196, 0)
rpl.Size = UDim2.new(0, 93,0, 50)
rpl.Parent = mainframe
rpl.Visible = true
rpl.TextScaled = true
rpl.BackgroundColor3 = Color3.fromRGB(51, 53, 93)
rpl.BorderColor3 = Color3.fromRGB(27, 42, 53)
rpl.TextColor3 = Color3.fromRGB(83, 96, 139)
local tptovoid = Instance.new("TextButton")
tptovoid.Name = "TpToVoid"
tptovoid.Text = "TP TO VOID (R)"
tptovoid.Position = UDim2.new(0.285, 0,0, 0)
tptovoid.Size = UDim2.new(0, 93,0, 50)
tptovoid.Parent = mainframe
tptovoid.Visible = true
tptovoid.TextScaled = true
tptovoid.Interactable = false
tptovoid.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tptovoid.BorderColor3 = Color3.fromRGB(27, 42, 53)
tptovoid.TextColor3 = Color3.fromRGB(255,255,255)
local kjanim = Instance.new("TextButton")
kjanim.Name = "kjanim"
kjanim.Text = "KJ - Saitama ANIM (CLICK)"
kjanim.Position = UDim2.new(0.286, 0,-0.395, 0)
kjanim.Size = UDim2.new(0, 93,0, 50)
kjanim.Parent = mainframe
kjanim.Visible = true
kjanim.TextScaled = true
kjanim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
kjanim.BorderColor3 = Color3.fromRGB(27, 42, 53)
kjanim.TextColor3 = Color3.fromRGB(255,255,255)
local gojoanim = Instance.new("TextButton")
gojoanim.Name = "gojoanim"
gojoanim.Text = "GOJO - Saitama ANIM (CLICK)"
gojoanim.Position = UDim2.new(0.611, 0,-0.391, 0)
gojoanim.Size = UDim2.new(0, 93,0, 50)
gojoanim.Parent = mainframe
gojoanim.Visible = true
gojoanim.TextScaled = true
gojoanim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
gojoanim.BorderColor3 = Color3.fromRGB(27, 42, 53)
gojoanim.TextColor3 = Color3.fromRGB(255,255,255)
local tpup = Instance.new("TextButton")
tpup.Name = "TpUp"
tpup.Text = "TP UP (H)"
tpup.Position = UDim2.new(0.285, 0,0.39,0)
tpup.Size = UDim2.new(0, 93,0, 50)
tpup.Parent = mainframe
tpup.Visible = true
tpup.TextScaled = true
tpup.Interactable = false
tpup.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tpup.BorderColor3 = Color3.fromRGB(27, 42, 53)
tpup.TextColor3 = Color3.fromRGB(255,255,255)
local tptowd = Instance.new("TextButton")
tptowd.Name = "TpToWD"
tptowd.Text = "TP TO WEAKEST DUMMY (CLICK)"
tptowd.Position = UDim2.new(0.57, 0,0.586, 0)
tptowd.Size = UDim2.new(0, 93,0, 50)
tptowd.Parent = mainframe
tptowd.Visible = true
tptowd.TextScaled = true
tptowd.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tptowd.BorderColor3 = Color3.fromRGB(27, 42, 53)
tptowd.TextColor3 = Color3.fromRGB(255,255,255)
local setoh = Instance.new("TextButton")
setoh.Name = "SOH"
setoh.Text = "SET OLDPOS HERE (Z)"
setoh.Position = UDim2.new(0.57, 0,0.781, 0)
setoh.Size = UDim2.new(0, 93,0, 50)
setoh.Parent = mainframe
setoh.Visible = true
setoh.TextScaled = true
setoh.Interactable = false
setoh.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
setoh.BorderColor3 = Color3.fromRGB(27, 42, 53)
setoh.TextColor3 = Color3.fromRGB(255,255,255)
local tptotarget = Instance.new("TextButton")
tptotarget.Name = "TpToTarget"
tptotarget.Text = "TP TO TARGET (Y)"
tptotarget.Position = UDim2.new(0, 0,0, 0)
tptotarget.Size = UDim2.new(0, 93,0, 50)
tptotarget.Parent = mainframe
tptotarget.Visible = true
tptotarget.TextScaled = true
tptotarget.Interactable = false
tptotarget.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tptotarget.BorderColor3 = Color3.fromRGB(27, 42, 53)
tptotarget.TextColor3 = Color3.fromRGB(255,255,255)
local kjrunlol = Instance.new("TextButton")
kjrunlol.Name = "KJRUNLOL"
kjrunlol.Text = "KJ RUN LOL (6) [KJ SCRIPT ACTIVATE FIRST]"
kjrunlol.Position = UDim2.new(-0, 0,0.195, 0)
kjrunlol.Size = UDim2.new(0, 93,0, 50)
kjrunlol.Parent = mainframe
kjrunlol.Visible = true
kjrunlol.TextScaled = true
kjrunlol.Interactable = false
kjrunlol.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
kjrunlol.BorderColor3 = Color3.fromRGB(27, 42, 53)
kjrunlol.TextColor3 = Color3.fromRGB(255,255,255)
local ultimatedodge = Instance.new("TextButton")
ultimatedodge.Name = "UltimateDodge"
ultimatedodge.Text = "ULTIMATE DODGE (5)"
ultimatedodge.Position = UDim2.new(0.571, 0,0, 0)
ultimatedodge.Size = UDim2.new(0, 93,0, 50)
ultimatedodge.Parent = mainframe
ultimatedodge.Visible = true
ultimatedodge.TextScaled = true
ultimatedodge.Interactable = false
ultimatedodge.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ultimatedodge.BorderColor3 = Color3.fromRGB(27, 42, 53)
ultimatedodge.TextColor3 = Color3.fromRGB(255,255,255)
local reversetime = Instance.new("TextButton")
reversetime.Name = "ReverseTime"
reversetime.Text = "GO TO OLDPOS (E)"
reversetime.Position = UDim2.new(0.285, 0,0.195, 0)
reversetime.Size = UDim2.new(0, 93,0, 50)
reversetime.Parent = mainframe
reversetime.Visible = true
reversetime.TextScaled = true
reversetime.Interactable = false
reversetime.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reversetime.BorderColor3 = Color3.fromRGB(27, 42, 53)
reversetime.TextColor3 = Color3.fromRGB(255,255,255)
local tpforward = Instance.new("TextButton")
tpforward.Name = "TpForward"
tpforward.Text = "Tp Forward (T)"
tpforward.Position = UDim2.new(0.571, 0,0.195, 0)
tpforward.Size = UDim2.new(0, 93,0, 50)
tpforward.Parent = mainframe
tpforward.Visible = true
tpforward.TextScaled = true
tpforward.Interactable = false
tpforward.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tpforward.BorderColor3 = Color3.fromRGB(27, 42, 53)
tpforward.TextColor3 = Color3.fromRGB(255,255,255)
local autododge = Instance.new("TextButton")
autododge.Name = "AUTODODGE"
autododge.Text = "AUTO DODGE (V) [Off]"
autododge.Position = UDim2.new(0.286, 0,0.777, 0)
autododge.Size = UDim2.new(0, 93,0, 50)
autododge.Parent = mainframe
autododge.Visible = true
autododge.TextScaled = true
autododge.Interactable = false
autododge.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
autododge.BorderColor3 = Color3.fromRGB(27, 42, 53)
autododge.TextColor3 = Color3.fromRGB(255,255,255)
local tptomountain = Instance.new("TextButton")
tptomountain.Name = "TpToMountain"
tptomountain.Text = "Tp To Mountain (U)"
tptomountain.Position = UDim2.new(-0, 0,0.39, 0)
tptomountain.Size = UDim2.new(0, 93,0, 50)
tptomountain.Parent = mainframe
tptomountain.Visible = true
tptomountain.TextScaled = true
tptomountain.Interactable = false
tptomountain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tptomountain.BorderColor3 = Color3.fromRGB(0, 0, 0)
tptomountain.TextColor3 = Color3.fromRGB(255,255,255)
local tpeverywhere = Instance.new("TextButton")
tpeverywhere.Name = "TpEveryWhere"
tpeverywhere.Text = "Tp Everywhere (J)"
tpeverywhere.Position = UDim2.new(0.57, 0,0.39,0)
tpeverywhere.Size = UDim2.new(0, 93,0, 50)
tpeverywhere.Parent = mainframe
tpeverywhere.Visible = true
tpeverywhere.TextScaled = true
tpeverywhere.Interactable = false
tpeverywhere.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tpeverywhere.BorderColor3 = Color3.fromRGB(27, 42, 53)
tpeverywhere.TextColor3 = Color3.fromRGB(255,255,255)
local tpatomic = Instance.new("TextButton")
tpatomic.Name = "TpAtomicCs"
tpatomic.Text = "ATOMIC CUTSCENE (CLICK / C)"
tpatomic.Position = UDim2.new(-0, 0,0.586, 0)
tpatomic.Size = UDim2.new(0, 93,0, 50)
tpatomic.Parent = mainframe
tpatomic.Visible = true
tpatomic.TextScaled = true
tpatomic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tpatomic.BorderColor3 = Color3.fromRGB(27, 42, 53)
tpatomic.TextColor3 = Color3.fromRGB(255,255,255)
local tpdeathcounter = Instance.new("TextButton")
tpdeathcounter.Name = "TpAtomicCs"
tpdeathcounter.Text = "DEATH COUNTER CUTSCENE (CLICK)"
tpdeathcounter.Position = UDim2.new(0.285, 0,0.586,0)
tpdeathcounter.Size = UDim2.new(0, 93,0, 50)
tpdeathcounter.Parent = mainframe
tpdeathcounter.Visible = true
tpdeathcounter.TextScaled = true
tpdeathcounter.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tpdeathcounter.BorderColor3 = Color3.fromRGB(27, 42, 53)
tpdeathcounter.TextColor3 = Color3.fromRGB(255,255,255)
local textlabel = Instance.new("TextLabel")
textlabel.Name = "TextLabel"
textlabel.Text = "BattleX v1.0.0"
textlabel.Position = UDim2.new(0, 93,0, -50)
textlabel.Size = UDim2.new(0, 200,0, 50)
textlabel.Parent = mainframe
textlabel.Visible = true
textlabel.TextScaled = true
textlabel.Interactable = false
textlabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textlabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
textlabel.TextColor3 = Color3.fromRGB(255,255,255)
local toggle = Instance.new("TextButton")
toggle.Name = "Open/Close"
toggle.Text = "Open/Close Ui"
toggle.Position = UDim2.new(-0.007, 0,3.054, 0)
toggle.Size = UDim2.new(0, 78,0, 32)
toggle.Parent = hiddenframe
toggle.Visible = true
toggle.TextScaled = true
toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
toggle.BackgroundTransparency = 0.25
toggle.TextColor3 = Color3.new(255,255,255)
toggle.TextColor3 = Color3.fromRGB(255,255,255)
toggle.MouseButton1Click:Connect(function()
	mainframe.Visible = not mainframe.Visible
end)
local togglemobilelol = Instance.new("TextButton")
togglemobilelol.Name = "MobileKeyboard"
togglemobilelol.Text = "Mobile Keyboard"
togglemobilelol.Position = UDim2.new(-0.007, 0,3.444, 0)
togglemobilelol.Size = UDim2.new(0, 78,0, 32)
togglemobilelol.Parent = hiddenframe
togglemobilelol.Visible = true
togglemobilelol.TextScaled = true
togglemobilelol.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
togglemobilelol.BorderColor3 = Color3.fromRGB(27, 42, 53)
togglemobilelol.BackgroundTransparency = 0.25
togglemobilelol.TextColor3 = Color3.new(255,255,255)
togglemobilelol.TextColor3 = Color3.fromRGB(255,255,255)
togglemobilelol.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
end)
local uicorner = Instance.new("UICorner")
uicorner.Parent = mainframe
for i,v in pairs(mainframe:GetChildren()) do
	if v.ClassName == "TextButton" or v.ClassName == "TextLabel" then
	    local uicorner = Instance.new("UICorner")
	    uicorner.Parent = v
		v.Font =  Enum.Font.Oswald
	end
end
local uicorner = Instance.new("UICorner")
uicorner.Parent = textlabel
textlabel.Font =  Enum.Font.Oswald
local uicorner = Instance.new("UICorner")
uicorner.Parent = toggle
toggle.Font =  Enum.Font.Oswald
local uicorner = Instance.new("UICorner")
uicorner.Parent = togglemobilelol
togglemobilelol.Font =  Enum.Font.Oswald
local animscriptactivate = false
kjanim.MouseButton1Click:Connect(function()
	if animscriptactivate == true then return end
	animscriptactivate = true
	loadstring(game:HttpGet("https://raw.githubusercontent.com/catlolroblox/catlolroblox/refs/heads/main/test"))()
end)
allcharanim.MouseButton1Click:Connect(function()
	if animscriptactivate == true then return end
	animscriptactivate = true
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Mautiku/ehh/main/strong%20guest.lua.txt'))()
end)
gojoanim.MouseButton1Click:Connect(function()
	if animscriptactivate == true then return end
	animscriptactivate = true
	print("👓 - Running gojo anim script")
	_G.settings = {
		["RedStartupId"] = "rbxassetid://1177475221",
		["RedHitId"] = "rbxassetid://8625377966",
	}
	loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/main/Latest.lua"))()
end)
coroutine.resume(coroutine.create(function()
	while task.wait() do
		for i,v in pairs(game.Workspace.Live:GetChildren()) do
			if v.ClassName == "Model" and v:FindFirstChild("HumanoidRootPart") then
				if not v:FindFirstChild("ESPPLAYERLOL") then
					if v.Name == "Crab Boss" then
						local va = Instance.new("BoolValue")
						va.Name = "ESPPLAYERLOL"
						va.Parent = v
						local highlight = Instance.new("Highlight")
						highlight.Parent = v
						highlight.Enabled = true
						local espthinglol = Instance.new("Beam")
						local e = Instance.new("Attachment")
						local z = Instance.new("Attachment")
						espthinglol.Name = "ESPTHING"
						espthinglol.Brightness = 1
						espthinglol.Color = ColorSequence.new(Color3.new(1, 0, 0),Color3.new(1, 0, 0))
						espthinglol.Attachment1 = e
						espthinglol.Attachment0 = z
						espthinglol.Width0 = 0.3
						espthinglol.Width1 = 0.3
						e.Parent = v.HumanoidRootPart
						z.Parent = plr.Character.HumanoidRootPart
						espthinglol.Parent = v
						espthinglol.FaceCamera = true
					end
					if v.Name == target and v:FindFirstChild("HumanoidRootPart") then
						local va = Instance.new("BoolValue")
						va.Name = "ESPPLAYERLOL"
						va.Parent = v
						local highlightplr = Instance.new("Highlight")
						highlightplr.Parent = v
						highlightplr.Enabled = true
						highlightplr.FillColor = Color3.new(0.333333, 1, 0)
						local espthinglol = Instance.new("Beam")
						local e = Instance.new("Attachment")
						local z = Instance.new("Attachment")
						espthinglol.Name = "ESPTHING"
						espthinglol.Brightness = 1
						espthinglol.Color = ColorSequence.new(Color3.new(0.333333, 1, 0),Color3.new(0.333333, 1, 0))
						espthinglol.Attachment1 = e
						espthinglol.Attachment0 = z
						espthinglol.Width0 = 0.3
						espthinglol.Width1 = 0.3
						e.Parent = v.HumanoidRootPart
						z.Parent = plr.Character.HumanoidRootPart
						espthinglol.Parent = v
						espthinglol.FaceCamera = true
						coroutine.resume(coroutine.create(function()
							repeat wait() until target ~= v.Name
							highlightplr:Destroy()
							espthinglol:Destroy()
							va:Destroy()
							e:Destroy()
							z:Destroy()
						end))
					end
				end
			end
		end
	end
end))
function getplayerlist()
	print("📃 - Getting playerlist")
	if close == true then return end
	for i,v in pairs(playerlistframe:GetChildren()) do
		if v.ClassName == "TextButton" then
			v:Destroy()
		end
	end
	
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= plr.Name then
		local button = Instance.new("TextButton")
			button.Parent = playerlistframe
			button.Text = v.Name
			if not v.Character then
				print("😭 - Player "..v.Name.." Failed to find his character")
			end
			if v.Character:FindFirstChild("Humanoid") then
		       button.Text = v.Character.Humanoid.DisplayName.." ("..v.Name..")"
			end	
			if not v.Character:FindFirstChild("Humanoid") then
				print("🙏 - vPlayer "..v.Name.." Failed to find humanoid")
			end
		button.Name = "Player"..i
		button.TextScaled = true
		button.TextColor3 = Color3.fromRGB(83, 96, 139)
		button.BackgroundColor3 = Color3.fromRGB(51, 53, 93)
		button.BorderColor3 = Color3.fromRGB(27, 42, 53)
		button.MouseButton1Click:Connect(function()
			target = v.Name
				print("🖱 - Select "..v.Name)
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://9119713951"
				sound.Volume = 0
				sound.Parent = plr.PlayerGui
				sound:Play()
				game.Debris:AddItem(sound,5)
			end)
		end
	end
	
	for i,v in pairs(playerlistframe:GetChildren()) do
		if v.Name:find("Button") then
			local uicorner = Instance.new("UICorner")
			uicorner.Parent = v
			local uistroke = Instance.new("UIStroke")
			uistroke.Parent = v
			uistroke.Color = Color3.fromRGB(0, 0, 0)
			uistroke.Thickness = 2
			uistroke.LineJoinMode = Enum.LineJoinMode.Round
			uistroke.Transparency = 0
		end
	end
	
end
local autododgetoggle = false
UIS.InputBegan:Connect(function(key ,typing)
	if typing == true then return end
	if key.KeyCode == Enum.KeyCode.V then
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://12221967"
		sound.Volume = 3
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		autododgetoggle = not autododgetoggle
		if autododgetoggle == true then
			autododge.Text = "AUTO DODGE (V) [ON]"
		else
			autododge.Text = "AUTO DODGE (V) [OFF]"
		end
	end
end)
local autododgehitbox = Instance.new("Part")
autododgehitbox.Transparency = 1
autododgehitbox.Size = Vector3.new(25,25,25)
autododgehitbox.CanCollide = false
autododgehitbox.CanTouch = true
autododgehitbox.Anchored = false
autododgehitbox.Parent = game.Workspace
coroutine.resume(coroutine.create(function()
	while task.wait() do
		if close == true then return end
		if not autododgehitbox then return end
		if not plr.Character then return end
		if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
		autododgehitbox.CFrame = plr.Character.HumanoidRootPart.CFrame
		if autododgetoggle == true then
			autododgehitbox.Transparency = 0.75
		else
			autododgehitbox.Transparency = 1
		end
	end
end))
autododgehitbox.Touched:Connect(function(hit)
	if close == true then return end
	if autododgetoggle == false then return end
	if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
		plr.Character.HumanoidRootPart.CFrame *= CFrame.new(math.random(-25,25),0,0)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://5066021887"
		sound.Volume = 1
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
end)
local oldpospart = Instance.new("Part")
oldpospart.Transparency = 0
oldpospart.Size = Vector3.new(2.5,2.5,2.5)
oldpospart.CanCollide = false
oldpospart.Anchored = true
oldpospart.Parent = game.Workspace
local highlight = Instance.new("Highlight")
highlight.Parent = oldpospart
highlight.FillColor = Color3.new(0.333333, 1, 0)
local targetval = Instance.new("StringValue")
targetval.Name = "Target"
targetval.Parent = mainframe
targethim.MouseButton1Click:Connect(function()
	if game.Players:FindFirstChild(target) then
		mainframe.Target.Value = target
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://7433801607"
		sound.Volume = 2
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		print("✅ - Target success "..target)
	else
		print("🎯 - Failed Target")
	end
end)
getplayerlist()
game.Players.ChildAdded:Connect(function()
	if close == true then return end
	getplayerlist()
end)
game.Players.ChildRemoved:Connect(function()
	if close == true then return end
	getplayerlist()
end)
function cdfuc(len)
	if close == true then return end
	coroutine.resume(coroutine.create(function()
	cd = true
	wait(len)
	cd = false
	end))
end
rpl.MouseButton1Click:Connect(function()
	getplayerlist()
end)
antilag.MouseButton1Click:Connect(function()
	antilag:Destroy()
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://4643776975"
	sound.Volume = 0
	sound.Parent = plr.PlayerGui
	sound:Play()
	game.Debris:AddItem(sound,5)
	for i,v in pairs(game.Workspace.Map:GetChildren()) do
		if v.ClassName == "Part" then
			v.Material = Enum.Material.SmoothPlastic
			v.CastShadow = false
			if v:FindFirstChildOfClass("Decal") then
				v:FindFirstChildOfClass("Decal"):Destroy()
			end
			if v:FindFirstChildOfClass("Texture") then
				v:FindFirstChildOfClass("Texture"):Destroy()
			end
		end
		if v.ClassName == "MeshPart" then
			v.Material = Enum.Material.SmoothPlastic
			v.CastShadow = false
			v.TextureID = ""
			if v:FindFirstChildOfClass("Decal") then
				v:FindFirstChildOfClass("Decal"):Destroy()
			end
			if v:FindFirstChildOfClass("Texture") then
				v:FindFirstChildOfClass("Texture"):Destroy()
			end
		end
		if v.ClassName == "Model" then
			for k,m in pairs(v:GetChildren()) do
				if m.ClassName == "Part" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					if m:FindFirstChildOfClass("Decal") then
						m:FindFirstChildOfClass("Decal"):Destroy()
					end
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "MeshPart" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					m.TextureID = ""
					if m:FindFirstChildOfClass("Decal") then
						m:FindFirstChildOfClass("Decal"):Destroy()
					end
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "Model" then
					for u,n in pairs(m:GetChildren()) do
						if n.ClassName == "Part" then
							n.Material = Enum.Material.SmoothPlastic
							n.CastShadow = false
							if n:FindFirstChildOfClass("Texture") then
								n:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
						if n.ClassName == "MeshPart" then
							n.Material = Enum.Material.SmoothPlastic
							n.CastShadow = false
							n.TextureID = ""
							if n:FindFirstChildOfClass("Decal") then
								n:FindFirstChildOfClass("Decal"):Destroy()
							end
							if n:FindFirstChildOfClass("Texture") then
								n:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
					end
				end
			end
		end
		if v.ClassName == "Folder" then
			for k,m in pairs(v:GetChildren()) do
				if m.ClassName == "Part" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "MeshPart" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					m.TextureID = ""
					if m:FindFirstChildOfClass("Decal") then
						m:FindFirstChildOfClass("Decal"):Destroy()
					end
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "Model" then
					for p,a in pairs(m:GetChildren()) do
						if a.ClassName == "Part" then
							a.Material = Enum.Material.SmoothPlastic
							a.CastShadow = false
							if a:FindFirstChildOfClass("Texture") then
								a:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
						if a.ClassName == "MeshPart" then
							a.Material = Enum.Material.SmoothPlastic
							a.CastShadow = false
							a.TextureID = ""
							if a:FindFirstChildOfClass("Decal") then
								a:FindFirstChildOfClass("Decal"):Destroy()
							end
							if a:FindFirstChildOfClass("Texture") then
								a:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
						if a.ClassName == "Model" then
							for u,n in pairs(a:GetChildren()) do
								if n.ClassName == "Part" then
									n.Material = Enum.Material.SmoothPlastic
									n.CastShadow = false
									if n:FindFirstChildOfClass("Texture") then
										n:FindFirstChildOfClass("Texture"):Destroy()
									end
								end
								if n.ClassName == "MeshPart" then
									n.Material = Enum.Material.SmoothPlastic
									n.CastShadow = false
									n.TextureID = ""
									if n:FindFirstChildOfClass("Decal") then
										n:FindFirstChildOfClass("Decal"):Destroy()
									end
									if n:FindFirstChildOfClass("Texture") then
										n:FindFirstChildOfClass("Texture"):Destroy()
									end
								end
							end
						end
					end
				end
			end
		end
	end
	for i,v in pairs(game.Workspace.Summermap:GetChildren()) do
		if v.ClassName == "Part" then
			v.Material = Enum.Material.SmoothPlastic
			v.CastShadow = false
			if v:FindFirstChildOfClass("Decal") then
				v:FindFirstChildOfClass("Decal"):Destroy()
			end
			if v:FindFirstChildOfClass("Texture") then
				v:FindFirstChildOfClass("Texture"):Destroy()
			end
		end
		if v.ClassName == "MeshPart" then
			v.Material = Enum.Material.SmoothPlastic
			v.CastShadow = false
			v.TextureID = ""
			if v:FindFirstChildOfClass("Decal") then
				v:FindFirstChildOfClass("Decal"):Destroy()
			end
			if v:FindFirstChildOfClass("Texture") then
				v:FindFirstChildOfClass("Texture"):Destroy()
			end
		end
		if v.ClassName == "Model" then
			for k,m in pairs(v:GetChildren()) do
				if m.ClassName == "Part" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					if m:FindFirstChildOfClass("Decal") then
						m:FindFirstChildOfClass("Decal"):Destroy()
					end
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "MeshPart" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					m.TextureID = ""
					if m:FindFirstChildOfClass("Decal") then
						m:FindFirstChildOfClass("Decal"):Destroy()
					end
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "Model" then
					for u,n in pairs(m:GetChildren()) do
						if n.ClassName == "Part" then
							n.Material = Enum.Material.SmoothPlastic
							n.CastShadow = false
							if n:FindFirstChildOfClass("Texture") then
								n:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
						if n.ClassName == "MeshPart" then
							n.Material = Enum.Material.SmoothPlastic
							n.CastShadow = false
							n.TextureID = ""
							if n:FindFirstChildOfClass("Decal") then
								n:FindFirstChildOfClass("Decal"):Destroy()
							end
							if n:FindFirstChildOfClass("Texture") then
								n:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
					end
				end
			end
		end
		if v.ClassName == "Folder" then
			for k,m in pairs(v:GetChildren()) do
				if m.ClassName == "Part" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "MeshPart" then
					m.Material = Enum.Material.SmoothPlastic
					m.CastShadow = false
					m.TextureID = ""
					if m:FindFirstChildOfClass("Decal") then
						m:FindFirstChildOfClass("Decal"):Destroy()
					end
					if m:FindFirstChildOfClass("Texture") then
						m:FindFirstChildOfClass("Texture"):Destroy()
					end
				end
				if m.ClassName == "Model" then
					for p,a in pairs(m:GetChildren()) do
						if a.ClassName == "Part" then
							a.Material = Enum.Material.SmoothPlastic
							a.CastShadow = false
							if a:FindFirstChildOfClass("Texture") then
								a:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
						if a.ClassName == "MeshPart" then
							a.Material = Enum.Material.SmoothPlastic
							a.CastShadow = false
							a.TextureID = ""
							if a:FindFirstChildOfClass("Decal") then
								a:FindFirstChildOfClass("Decal"):Destroy()
							end
							if a:FindFirstChildOfClass("Texture") then
								a:FindFirstChildOfClass("Texture"):Destroy()
							end
						end
						if a.ClassName == "Model" then
							for u,n in pairs(a:GetChildren()) do
								if n.ClassName == "Part" then
									n.Material = Enum.Material.SmoothPlastic
									n.CastShadow = false
									if n:FindFirstChildOfClass("Texture") then
										n:FindFirstChildOfClass("Texture"):Destroy()
									end
								end
								if n.ClassName == "MeshPart" then
									n.Material = Enum.Material.SmoothPlastic
									n.CastShadow = false
									n.TextureID = ""
									if n:FindFirstChildOfClass("Decal") then
										n:FindFirstChildOfClass("Decal"):Destroy()
									end
									if n:FindFirstChildOfClass("Texture") then
										n:FindFirstChildOfClass("Texture"):Destroy()
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)
local debugmode = false
UIS.InputBegan:Connect(function(key, typing)
	if typing == true then return end
	if close == true then return end
	if key.KeyCode == Enum.KeyCode.Seven then
		debugmode = not debugmode
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://9068077052"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
end)
local needspawn = false
local debugpart = Instance.new("Part")
debugpart.Parent = game.Workspace
debugpart.Size = Vector3.new(1,5,5)
debugpart.Transparency = 0.5
debugpart.Material = Enum.Material.SmoothPlastic
debugpart.Color = Color3.new(1, 1, 1)
debugpart.Anchored = true
debugpart.CanCollide = false
coroutine.resume(coroutine.create(function()
	while task.wait() do
		if debugmode == true and close == false then
			if debugpart then
				debugpart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2.5)
			end
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while task.wait() do
		if close == true then return end
	if plr.Character then
		if plr.Character:FindFirstChild("Humanoid") then
			if plr.Character.Humanoid.Health <= 0 then
				needspawn = true
			end
			if plr.Character.Humanoid.Health > 0 then
				if needspawn == true then
						needspawn = false
						animscriptactivate = false
					repeat task.wait() until plr.Character	
					repeat task.wait() until plr.Character:FindFirstChild("HumanoidRootPart")
						if plr.Character and oldpos ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") then
							plr.Character.HumanoidRootPart.CFrame = oldpos
							local debugpart = Instance.new("Part")
							debugpart.Parent = game.Workspace
							debugpart.Size = Vector3.new(1,5,5)
							debugpart.Transparency = 0.5
							debugpart.Material = Enum.Material.SmoothPlastic
							debugpart.Color = Color3.new(1, 1, 1)
							debugpart.Anchored = true
							debugpart.CanCollide = false
							coroutine.resume(coroutine.create(function()
								while task.wait() do
									if debugmode == true and close == false then
										if debugpart then
											debugpart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2.5)
										end
									end
								end
							end))
							autododgehitbox = Instance.new("Part")
						autododgehitbox.Transparency = 1
						autododgehitbox.Size = Vector3.new(25,25,25)
						autododgehitbox.CanCollide = false
						autododgehitbox.CanTouch = true
						autododgehitbox.Anchored = false
						autododgehitbox.Parent = game.Workspace	
						coroutine.resume(coroutine.create(function()
							while task.wait() do
								if close == true then return end
								if not plr.Character then return end
								if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
								autododgehitbox.CFrame = plr.Character.HumanoidRootPart.CFrame
								if autododgetoggle == true then
									autododgehitbox.Transparency = 0.75
								else
									autododgehitbox.Transparency = 1
								end
							end
							end))	
							autododgehitbox.Touched:Connect(function(hit)
								if close == true then return end
								if autododgetoggle == false then return end
								if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= plr.Name then
									plr.Character.HumanoidRootPart.CFrame *= CFrame.new(math.random(-25,25),0,0)
									local sound = Instance.new("Sound")
									sound.SoundId = "rbxassetid://5066021887"
									sound.Volume = 1
									sound.Parent = plr.PlayerGui
									sound:Play()
									game.Debris:AddItem(sound,5)
								end
							end)
					end	
				end
			end
		end
		end
	end
end))
tpatomic.MouseButton1Click:Connect(function()
	cdfuc(0.1)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(1073.91, 300, 23000.9)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://2502245370"
	sound.Volume = 0
	sound.Parent = plr.PlayerGui
	sound:Play()
	game.Debris:AddItem(sound,5)
end)
tpdeathcounter.MouseButton1Click:Connect(function()
	cdfuc(0.1)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(-66.4153, 38.8347, 20345.9)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://2502245370"
	sound.Volume = 0
	sound.Parent = plr.PlayerGui
	sound:Play()
	game.Debris:AddItem(sound,5)
end)
tptowd.MouseButton1Click:Connect(function()
	plr.Character.HumanoidRootPart.CFrame = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://405593386"
	sound.Volume = 0
	sound.Parent = plr.PlayerGui
	sound:Play()
	game.Debris:AddItem(sound,5)
end)
UIS.InputBegan:Connect(function(key ,typing)
	if typing == true then return end
	if close == true then return end
	if key.KeyCode == Enum.KeyCode.Zero then
		close = true
		UI:Destroy()
		oldpospart:Destroy()
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://7148585764"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		print("🔐 - BattleX has been closed.")
		script:Destroy()
	end
	if key.KeyCode == Enum.KeyCode.Z and cd == false then
		cdfuc(0.01)
		oldpos = plr.Character.HumanoidRootPart.CFrame
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://405593386"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	    oldpospart.CFrame = plr.Character.HumanoidRootPart.CFrame
	end
	if key.KeyCode == Enum.KeyCode.E and cd == false then
		cdfuc(0.01)
		plr.Character.HumanoidRootPart.CFrame = oldpos
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2502245370"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.C and cd == false then
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(1064.5376, 153.16777, 23007.7812)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2502245370"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.J and cd == false then
		cdfuc(2.5)
		local oldpos = plr.Character.HumanoidRootPart.CFrame
		
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(598.023, 677.615, 368.587)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.1)
		
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(1427.56519, 706.783447, 210.242722)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.125)

		plr.Character.HumanoidRootPart.CFrame = CFrame.new(1270.58655, 810.672607, -882.062195)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.145)

		plr.Character.HumanoidRootPart.CFrame = CFrame.new(361.287018, 668.365112, -909.278259)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.175)

		plr.Character.HumanoidRootPart.CFrame = CFrame.new(1244.64441, 442.505676, -200.091705)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.2)

		plr.Character.HumanoidRootPart.CFrame = CFrame.new(785.2, 440.606, -80.5222)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.25)

		plr.Character.HumanoidRootPart.CFrame = CFrame.new(47.4173, 440.506, -269.28)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.25)

		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-66.4153, 38.8347, 20345.9)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.25)

		plr.Character.HumanoidRootPart.CFrame = CFrame.new(1073.91, 300, 23000.9)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		
		wait(0.25)
		
		plr.Character.HumanoidRootPart.CFrame = oldpos
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2502245370"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.T and cd == false then
		cdfuc(0.01)
		plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,0,-100)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2502245370"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.H and cd == false then
		cdfuc(0.1)
		plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,100,0)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2502245370"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.U and cd == false then
		cdfuc(0.1)
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(992.302, 665.942, 614.392)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://2502245370"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.R and cd == false then
		cdfuc(2.5)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		local oldpos = plr.Character.HumanoidRootPart.CFrame
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(0,-460,0)
		wait(0.5)
		plr.Character.HumanoidRootPart.CFrame = CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
		plr.Character.HumanoidRootPart.Anchored = true
		wait(2)
		plr.Character.HumanoidRootPart.CFrame = oldpos
		plr.Character.HumanoidRootPart.Anchored = false
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.Y and cd == false then
		cdfuc(0.01)
		local enemy = game.Workspace.Live[targetval.Value]
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		plr.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
	end
	if key.KeyCode == Enum.KeyCode.Five and cd == false then		local enemy = game.Workspace.Live[targetval.Value]
		local oldpos = plr.Character.HumanoidRootPart.CFrame
		for i=1,15 do
			if cd == true then return end
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		plr.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(math.random(-25,25),0,math.random(-25,25))
			wait(0.01)
			if cd == true then return end
			plr.Character.HumanoidRootPart.CFrame = CFrame.lookAt(plr.Character.HumanoidRootPart.Position, enemy.HumanoidRootPart.Position)	
			wait(0.01)
			if cd == true then return end
		plr.Character.HumanoidRootPart.CFrame = oldpos
		end
		if cd == true then return end
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://743521691"
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		plr.Character.HumanoidRootPart.CFrame = oldpos
	end
	if key.KeyCode == Enum.KeyCode.Six and cd == false and animscriptactivate == true then
		cdfuc(5)
		playanim(11365563255,5)
		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://18460952794 "
		sound.Volume = 0
		sound.Parent = plr.PlayerGui
		sound:Play()
		game.Debris:AddItem(sound,5)
		plr.Character.Humanoid.AutoRotate = false
		wait(0.75)
		for i=1,60 do
			wait(0.01)
			plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,0,-1)
		end
		for i=1,20 do
			wait(0.01)
			plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,0,-2)
		end
		for i=1,10 do
			wait(0.01)
			plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,0,-3)
		end
		for i=1,10 do
			wait(0.01)
			plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,0,-4)
		end
		repeat wait(0.01)
			plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,0,-5)
		until cd == false
		plr.Character.HumanoidRootPart.CFrame *= CFrame.new(0,0,-200)
		plr.Character.Humanoid.AutoRotate = true
	end
end)
UI.ResetOnSpawn = false

------------------------------------------------------------------------
-- Freecam
-- Cinematic free camera for spectating and video production.
------------------------------------------------------------------------

local pi    = math.pi
local abs   = math.abs
local clamp = math.clamp
local exp   = math.exp
local rad   = math.rad
local sign  = math.sign
local sqrt  = math.sqrt
local tan   = math.tan

local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

local Camera = Workspace.CurrentCamera
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = Workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

------------------------------------------------------------------------

local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
local FREECAM_MACRO_KB = {Enum.KeyCode.LeftControl, Enum.KeyCode.P}

local NAV_GAIN = Vector3.new(1, 1, 1)*64
local PAN_GAIN = Vector2.new(0.75, 1)*8
local FOV_GAIN = 300

local PITCH_LIMIT = rad(90)

local VEL_STIFFNESS = 1.5
local PAN_STIFFNESS = 1.0
local FOV_STIFFNESS = 4.0

------------------------------------------------------------------------

local Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

------------------------------------------------------------------------

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0

local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
local fovSpring = Spring.new(FOV_STIFFNESS, 0)

------------------------------------------------------------------------

local Input = {} do
	local thumbstickCurve do
		local K_CURVATURE = 2.0
		local K_DEADZONE = 0.15

		local function fCurve(x)
			return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
		end

		local function fDeadzone(x)
			return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
		end

		function thumbstickCurve(x)
			return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
		end
	end

	local gamepad = {
		ButtonX = 0,
		ButtonY = 0,
		DPadDown = 0,
		DPadUp = 0,
		ButtonL2 = 0,
		ButtonR2 = 0,
		Thumbstick1 = Vector2.new(),
		Thumbstick2 = Vector2.new(),
	}

	local keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		U = 0,
		H = 0,
		J = 0,
		K = 0,
		I = 0,
		Y = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
		RightShift = 0,
	}

	local mouse = {
		Delta = Vector2.new(),
		MouseWheel = 0,
	}

	local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
	local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
	local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
	local FOV_WHEEL_SPEED    = 1.0
	local FOV_GAMEPAD_SPEED  = 0.25
	local NAV_ADJ_SPEED      = 0.75
	local NAV_SHIFT_MUL      = 0.25

	local navSpeed = 1

	function Input.Vel(dt)
		navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kGamepad = Vector3.new(
			thumbstickCurve(gamepad.Thumbstick1.X),
			thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
			thumbstickCurve(-gamepad.Thumbstick1.Y)
		)*NAV_GAMEPAD_SPEED

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
		)*NAV_KEYBOARD_SPEED

		local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

		return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kGamepad = Vector2.new(
			thumbstickCurve(gamepad.Thumbstick2.Y),
			thumbstickCurve(-gamepad.Thumbstick2.X)
		)*PAN_GAMEPAD_SPEED
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kGamepad + kMouse
	end

	function Input.Fov(dt)
		local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
		local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
		mouse.MouseWheel = 0
		return kGamepad + kMouse
	end

	do
		local function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		local function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
			return Enum.ContextActionResult.Sink
		end

		local function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = -input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
				Enum.KeyCode.W, Enum.KeyCode.U,
				Enum.KeyCode.A, Enum.KeyCode.H,
				Enum.KeyCode.S, Enum.KeyCode.J,
				Enum.KeyCode.D, Enum.KeyCode.K,
				Enum.KeyCode.E, Enum.KeyCode.I,
				Enum.KeyCode.Q, Enum.KeyCode.Y,
				Enum.KeyCode.Up, Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
			ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
			ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
			ContextActionService:UnbindAction("FreecamMouseWheel")
			ContextActionService:UnbindAction("FreecamGamepadButton")
			ContextActionService:UnbindAction("FreecamGamepadTrigger")
			ContextActionService:UnbindAction("FreecamGamepadThumbstick")
		end
	end
end

local function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2*tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = Workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

------------------------------------------------------------------------

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))
	local fov = fovSpring:Update(dt, Input.Fov(dt))

	local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

	cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
	cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
	cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

------------------------------------------------------------------------

local PlayerState = {} do
	local mouseBehavior
	local mouseIconEnabled
	local cameraType
	local cameraFocus
	local cameraCFrame
	local cameraFieldOfView
	local screenGuis = {}
	local coreGuis = {
		Backpack = true,
		Chat = true,
		Health = true,
		PlayerList = true,
	}
	local setCores = {
		BadgesNotificationsActive = true,
		PointsNotificationsActive = true,
	}

	-- Save state and set up for freecam
	function PlayerState.Push()

		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = false

		mouseBehavior = UserInputService.MouseBehavior
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	-- Restore state
	function PlayerState.Pop()

		Camera.FieldOfView = cameraFieldOfView
		cameraFieldOfView = nil

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

local function StartFreecam()
	if close == true then return end
	local cameraCFrame = Camera.CFrame
	cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
end

local function StopFreecam()
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
end

------------------------------------------------------------------------

do
	local enabled = false

	local function ToggleFreecam()
		if close == true then return end
		if enabled then
			StopFreecam()
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://2865227271"
			sound.Volume = 2
			sound.Parent = game.Players.LocalPlayer.PlayerGui
			sound:Play()
			game.Debris:AddItem(sound,5)
		else
			StartFreecam()
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://2865227271"
			sound.Volume = 2
			sound.Parent = game.Players.LocalPlayer.PlayerGui
			sound:Play()
			game.Debris:AddItem(sound,5)
		end
		enabled = not enabled
	end

	local function CheckMacro(macro)
		if close == true then return end
		for i = 1, #macro - 1 do
			if not UserInputService:IsKeyDown(macro[i]) then
				return
			end
		end
		ToggleFreecam()
	end

	local function HandleActivationInput(action, state, input)
		if state == Enum.UserInputState.Begin then
			if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
				CheckMacro(FREECAM_MACRO_KB)
			end
		end
		return Enum.ContextActionResult.Pass
	end

	ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
end