script:Destroy()
script = nil

local players = game:GetService("Players")
local storage = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local tween = game:GetService("TweenService")

local client = players.LocalPlayer
local mouse = client:GetMouse()
local remote = {
	["callback"] = storage:WaitForChild("remotes"):WaitForChild("RemoteFunction"),
	["event"] = storage:WaitForChild("remotes"):WaitForChild("RemoteEvent"),
	["functions"] = {}
}
local modules = {}
local gui = client:WaitForChild("PlayerGui"):WaitForChild("main")
local selected, looting, character

for _, module in next, storage.modules:GetChildren() do
	modules[module.Name] = require(module)
end

local function reload()
	warn("setting up")
	character = client.Character or client.CharacterAdded:Wait()
end

local function gethead()
	return client.Character and client.Character:FindFirstChild("Head")
end

client.CharacterAdded:Connect(reload)
reload()

gui:WaitForChild("notifications").ChildAdded:Connect(function(notification)
	if notification.ClassName == "TextLabel" then
		wait(tonumber(notification.Name) - 2)
		tween:Create(notification, TweenInfo.new(2), {
			TextTransparency = 1,
			TextStrokeTransparency = 1.5
		}):Play()
	end
end)

uis.InputBegan:Connect(function(Input, Gc)
	if Input.KeyCode.Name == "F" and not Gc and selected then
		remote.event:FireServer("interact", mouse.Hit.Position)
		looting = selected
	end
end)

uis.InputEnded:Connect(function(Input, Gc)
	if Input.KeyCode.Name == "F" and not Gc and looting then
		remote.event:FireServer("cancel")
		looting = nil
	end
end)

game:GetService("RunService"):BindToRenderStep("Selection", Enum.RenderPriority.First.Value, function()
	if not looting then
		local target = mouse.Target
		local model = target and target:FindFirstAncestorOfClass("Model")
		local currselected
		if model and model:IsDescendantOf(workspace.interact) and not model:FindFirstChild("TAG") then
			local head = gethead()
			if head and (head.Position - target.Position).Magnitude < 8 then
				currselected = model
			end
		end
		selected = currselected
		gui.select.Adornee = currselected
	else
		looting = looting:IsDescendantOf(workspace) and looting
	end
end)

repeat
	do break end
	while true do
	end
until true
