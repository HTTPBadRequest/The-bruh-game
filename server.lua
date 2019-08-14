local players = game:GetService("Players")
local storage = game:GetService("ReplicatedStorage")
local serverstorage = game:GetService("ServerStorage")
local tween = game:GetService("TweenService")

local loot = {}
local players = setmetatable({}, {
	__index = players
})
local modules = {}

for _, module in next, storage.modules:GetChildren() do
	modules[module.Name] = require(module)
end

local function notifyplayer(playerinfo, text, duration, mode)
	duration = duration or 5
	local notification = serverstorage.gui.notification:Clone()
	notification.Text = text
	notification.TextColor3 = (
		mode == "warning" and Color3.fromRGB(239, 184, 56) or
		mode == "fatal" and Color3.fromRGB(190, 104, 98) or
		notification.TextColor3
	)
	notification.Name = duration
	notification.Parent = playerinfo.gui.notifications
	delay(duration, function()
		notification:Destroy()
	end)
end

local function castplayerhit(player, hit, dist)
	local head = player.Character and player.Character:FindFirstChild("Head")
	if head then
		return workspace:FindPartOnRayWithIgnoreList(Ray.new(
			head.Position,
			(hit - head.Position).Unit * (dist or 250)
		), {player.Character})
	end
end

local function awardplayer(playerinfo, inc)
	if playerinfo.pocket.val < playerinfo.pocket.max then
		local newpocket = math.clamp(playerinfo.pocket.val + inc, 0, playerinfo.pocket.max)
		inc = newpocket - playerinfo.pocket.val
		notifyplayer(playerinfo, string.format("You are now pocketing %2.f$ (%+2.f$)", newpocket, inc))
		playerinfo.pocket.val = newpocket
	end
	if playerinfo.pocket.val == playerinfo.pocket.max then
		notifyplayer(playerinfo, "You have reached your maximum pocket capacity", 5, "warning")
		return true
	end
end

local function interact(playerinfo, model)
	if not awardplayer(playerinfo, loot[model].worth) then
		local jackedversion = serverstorage.models:FindFirstChild(string.format("Jacked %s", model.Name))
		if jackedversion then
			jackedversion = jackedversion:Clone()
			jackedversion:SetPrimaryPartCFrame(model:GetPrimaryPartCFrame())
			jackedversion.Parent = workspace.dump
		end
		model:Destroy()
	end
end

local function tagmodel(model)
	local tag = model:FindFirstChild("TAG")
	if tag then
		return tag
	else
		tag = serverstorage.bruh.TAG:Clone()
		tag.Parent = model
	end
end

local remote = {
	["callback"] = storage:WaitForChild("remotes"):WaitForChild("RemoteFunction"),
	["event"] = storage:WaitForChild("remotes"):WaitForChild("RemoteEvent"),
	["functions"] = {
		interact = function(player, hit)
			local target = castplayerhit(player, hit, 8)
			local model = target and target:FindFirstAncestorOfClass("Model")
			if model and model:IsDescendantOf(workspace.interact) and not tagmodel(model) then
				local lootinfo = modules.loot[model.Name]
				loot[model] = loot[model] or {
					worth = math.random(unpack(lootinfo.worth))
				}
				local playerinfo = players[player]
				local state = lootinfo.time > 0 and Enum.PlaybackState.Begin or Enum.PlaybackState.Completed
				if state.Name == "Begin" then
					local progress = serverstorage.gui.progress:Clone()
					progress.Parent = playerinfo.gui
					local tween = tween:Create(progress.bar, TweenInfo.new(lootinfo.time, Enum.EasingStyle.Linear), {
						Size = UDim2.new(1, -4, 1, -4)
					})
					playerinfo.interaction = tween
					tween:Play()
					state = tween.Completed:Wait()
					progress:Destroy()
				end
				if state.Name == "Completed" then
					interact(playerinfo, model)
				else
					local tag = model:FindFirstChild("TAG") and model.TAG:Destroy()
				end
			end
		end,
		cancel = function(player)
			local interaction = players[player].interaction
			if interaction and interaction.PlaybackState.Name == "Playing" then
				interaction:Cancel()
			end
		end,
		givepocket = awardplayer
	}
}

players.PlayerAdded:Connect(function(player)
	local playerinfo = {
		pocket = {
			val = 0,
			max = 5000
		}
	}
	player.CharacterAdded:Connect(function(char)
		warn("[server] setting up")
		local gui = serverstorage.gui.main:Clone()
		gui.Parent = player.PlayerGui
		playerinfo.gui = gui
	end)
	players[player] = playerinfo
end)

remote.event.OnServerEvent:Connect(function(player, action, ...)
	local func = remote.functions[action]
	if func then
		return func(player, ...)
	else
		player:Kick("no")
	end
end)

serverstorage.bruh.Event.Event:Connect(function(playername, action, ...)
	local func = remote.functions[action]
	if func then
		return func(players[playername], ...)
	else
		warn(string.format("attempt to fire %s", action))
	end
end)
