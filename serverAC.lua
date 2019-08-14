local Remote = game:GetService("ReplicatedStorage"):WaitForChild("")
local Players = game:GetService("Players")
local Http = game:GetService("HttpService")
local Webster = "https://discordapp.com/api/webhooks/581908743952793605/Zy1SxOIsVFzOiCrH_ibvLi6lgJ-jfqO5TC9FO-kRGaYiUkZ4dJ7hAnlqWSgn-6aldjbQ"
local Months = {
	"January",
	"February",
	"March",
	"April",
	"May",
	"June",
	"July",
	"August",
	"September",
	"October",
	"November",
	"December"
}
local Requests = {}
local Codes = {
	[1] = "Unclean",
	[2] = "Missing Humanoid",
	[3] = "Missing Character",
	[4] = "Locked Humanoid",
	[5] = "Bad Signal",
	[6] = "Humanoid State",
	[7] = "Humanoid Property",
	[8] = "Teleportation",
	[9] = "Missing RootPart",
	[10] = "CoreGui Trap",
	[11] = "Illegal Removal",
	[12] = "Illegal Change",
	[13] = "Backpack Tool",
	[14] = "Illegal Part",
	[15] = "Body Mover",
	[16] = "Illegal Error",
	[17] = "Unused",
	[18] = "Modified Equal",
	[19] = "Invalid Parameter",
	[20] = "Modified Saved Table",
	[21] = "Service Index Protection",
	[22] = "Modified Newindex Metamethod",
	[23] = "Modified Index Metamethod",
	[24] = "Modified Namecall Metamethod",
	[25] = "Modified Spawn",
	[26] = "Debug",
	[27] = "Spoofed Global",
	[28] = "Modified Closure",
	[29] = "Unused",
	[30] = "Physics FPS",
	[31] = "Sanity Check Failed",
	[32] = "Timeout",
	[33] = "Missing Connection",
	[34] = "Modified Constants",
	[35] = "Can-Collide Noclip",
	[36] = "Illegal GUI Object",
	[37] = "Xpcall Climb"
}

local random = math.random
local next = next
local tick = tick
local Commands = {
	ws = function(Player, Args)
		local Value = tonumber(Args[1] or "16")
		local Humanoid = Player.Character and Player.Character:FindFirstChildOfClass("Humanoid")
		if Humanoid then
			Humanoid.WalkSpeed = Value
		end
	end,
	jp = function(Player, Args)
		local Value = tonumber(Args[1] or "16")
		local Humanoid = Player.Character and Player.Character:FindFirstChildOfClass("Humanoid")
		if Humanoid then
			Humanoid.JumpPower = Value
		end
	end,
	respawn = function(Player)
		Player:LoadCharacter()
	end
}
local LastSeen = {}
Players.PlayerAdded:Connect(function(Player)
	Requests[Player.Name] = {}
	LastSeen[Player] = os.time()
	Player.Chatted:Connect(function(Message)
		if Message:sub(1, 1) == ";" then
			local Args = Message:sub(2):split(" ")
			local Command = Commands[table.remove(Args, 1)]
			if Command then
				Command(Player, Args)
			end
		end
	end)
end)
local Kick = function(Player, Code, Error)
	if not Requests[Player] then
		Requests[Player] = true
		Player:Kick(Code)
		delay(5, function()
			Requests[Player] = false
		end)
		if game:GetService("RunService"):IsStudio() then
			warn(Code)
		else
			local Date = os.date("!*t", os.time() - 14400)
			return Http:PostAsync(Webster, Http:JSONEncode({
				username = "AC",
				content = ("A player got kicked!\n```\n")
				.. ("Username: %s\n"):format(Player.Name)
				.. ("Reason: %s\n"):format(Code)
				.. (Error and ("Error: %s\n"):format(Error:gsub("@", "")) or "")
				.. ("Timestamp: %s %s, %s at %s:%s %s (Eastern Time)\n"):format(Months[Date.month], Date.day, Date.year, Date.hour % 12, ("%s%s"):format((Date.min - 9) > 0 and "" or "0", Date.min), Date.hour > 11 and "PM" or "AM")
				.. ("```")
			}))
		end
	end
end
local Handle = function(Player, Code, Arg)
	local This = Code - (Player.UserId ^ -1) / (#Players:GetPlayers() * math.floor(os.time() / 2.5))
	if This == (-#Players:GetPlayers()) ^ -1 * 5 then
		LastSeen[Player] = os.time()
	else
		Kick(Player, Codes[This] or "Invalid Parameter", Arg)
	end
end
Remote.OnServerEvent:Connect(Handle)
while wait(1) do
	for Player, LastTick in next, LastSeen do
		if Player and Player.Parent then
			if (os.time() - LastTick) > 5 then
				Kick(Player, "Timeout")
			end
		else
			LastSeen[Player] = nil
		end
	end
	Remote:FireAllClients({})
end
