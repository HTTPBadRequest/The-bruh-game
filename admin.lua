local PlayersService = game:GetService("Players")
local Datastore = game:GetService("DataStoreService"):GetDataStore("AdminRanks12")
local ServerStorage = game:GetService("ServerStorage")
local Prefix = "/"
local PresetRanks = {
	Najd = 3
}
local function GetArguments(Message)
	return Message:split(" ")
end

local Commands = setmetatable({}, {
	__index = {
		Add = function(self, Name, Rank, Function, Usage)
			self[Name] = setmetatable({
				Rank = Rank or 0,
				Usage = Usage
			}, {
				__call = Function
			})
		end,
		Remove = function(self, Name)
			self[Name] = nil
		end,
		Execute = function(self, Name, ...)
			local Command = self[Name]
			if Command then
				return Command(...)
			end
		end
	}
})

local HandleChat = function(PlayerInfo, Message)
	if Message:sub(1, #Prefix) == Prefix then
		Message = Message:sub(#Prefix + 1)
		local Command = GetArguments(Message)[1]
		local Function = Commands[Command]
		if Function and PlayerInfo.Rank >= Function.Rank then
			Function(PlayerInfo, Message:sub(#Command + 2))
		end
	end
end

local Players = setmetatable({}, {
	__index = {
		Add = function(self, Name)
			local Player = PlayersService:FindFirstChild(Name)
			local GotRank, Rank = pcall(Datastore.GetAsync, Datastore, Player.UserId)
			if not GotRank then
				warn(string.format("\n[DataStore Error]: %s\nOccurred with GET", Rank))
				Rank = 0
			end
			local PlayerInfo = {
				Instance = Player,
				Rank = PresetRanks[Name] or Rank
			}
			PlayerInfo.Connection = Player.Chatted:Connect(function(Message)
				HandleChat(PlayerInfo, Message)
			end)
			self[Name] = PlayerInfo
			return PlayerInfo
		end,
		Remove = function(self, Name, Reason)
			local PlayerInfo = self[Name]
			if PlayerInfo.Connection and PlayerInfo.Connection.Connected then
				PlayerInfo.Connection:Disconnect()
			end
			local SetRank, Error = pcall(Datastore.SetAsync, Datastore, PlayersService:GetUserIdFromNameAsync(Name), PlayerInfo.Rank)
			if not SetRank then
				warn(string.format("\n[DataStore Error]: %s\nOccurred with POST", Error))
			end
			local Player = PlayersService:FindFirstChild(Name)
			if Player and Reason then
				Player:Kick(Reason)
			end
			self[Name] = nil
		end,
		Find = function(self, Player, Name)
			Name = Name:lower()
			local Found = {}
			if Name == "all" then
				Found = self
			elseif Name == "me" then
				Found = {[Player.Instance.Name] = Player}
			else
				for PlayerName, PlayerInfo in next, self do
					if PlayerName:lower():sub(1, #Name) == Name or (Name == "others" and PlayerInfo ~= Player) then
						Found[PlayerName] = PlayerInfo
					end
				end
			end
			return Found
		end
	}
})

PlayersService.PlayerAdded:Connect(function(Player)
	local Info = Players:Add(Player.Name)
	if Info.Rank < 0 then
		Players:Remove(Player.Name, "You are banned.")
	end
end)

PlayersService.PlayerRemoving:Connect(function(Player)
	Players:Remove(Player.Name)
end)

Commands:Add("kill", 2, function(self, Player, Message)
	local Args = GetArguments(Message)
	for PlayerName, PlayerInfo in next, Players:Find(Player, Args[1]) do
		if PlayerInfo.Instance.Character then
			PlayerInfo.Instance.Character:BreakJoints()
		end
	end
end)

Commands:Add("god", 2, function(self, Player, Message)
	local Args = GetArguments(Message)
	for PlayerName, PlayerInfo in next, Players:Find(Player, Args[1]) do
		local Humanoid = PlayerInfo.Instance.Character and PlayerInfo.Instance.Character:FindFirstChildOfClass("Humanoid")
		if Humanoid then
			Humanoid.MaxHealth = math.huge
			Humanoid.Health = math.huge
		end
	end
end)

Commands:Add("ungod", 2, function(self, Player, Message)
	local Args = GetArguments(Message)
	for PlayerName, PlayerInfo in next, Players:Find(Player, Args[1]) do
		local Humanoid = PlayerInfo.Instance.Character and PlayerInfo.Instance.Character:FindFirstChildOfClass("Humanoid")
		if Humanoid then
			Humanoid.MaxHealth = 100
			Humanoid.Health = 100
		end
	end
end)

Commands:Add("kick", 2, function(self, Player, Message)
	local Args = GetArguments(Message)
	local Reason = Message:sub(#Args[1] + 2)
	for PlayerName, PlayerInfo in next, Players:Find(Player, Args[1]) do
		Players:Remove(PlayerName, Reason)
	end
end)

Commands:Add("ban", 3, function(self, Player, Message)
	local Args = GetArguments(Message)
	local Reason = Message:sub(#Args[1] + 2)
	for PlayerName, PlayerInfo in next, Players:Find(Player, Args[1]) do
		PlayerInfo.Rank = -1
		Players:Remove(PlayerName, Reason)
	end
end)

Commands:Add("givepocket", 3, function(self, Player, Message)
	local Args = GetArguments(Message)
	local Inc = tonumber(Args[2] or 0)
	for PlayerName, PlayerInfo in next, Players:Find(Player, Args[1]) do
		ServerStorage.bruh.Event:Fire(PlayerInfo.Instance, "givepocket", Inc)
	end
end)
