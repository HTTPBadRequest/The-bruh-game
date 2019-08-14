script:Destroy()
local Start = "o\1h\2i"
while true do
	script = (...) and _ or nil or (...), (...) and nil or (function(...)
		local Player = game:GetService("Players").LocalPlayer
		local _y = game:GetService("ReplicatedStorage"):WaitForChild("")
		local _m = _y:Clone()
		local _b
		local re = {
			["\0"] = 1,
			_FireServer = _m.FireServer,
			_Remote = _y,
			_Kick = Player.Kick,
			_CharacterAdded = Player.CharacterAdded,
			_FindFirstChild = game.FindFirstChild,
			_Changed = tostring(Instance.new("Humanoid").Changed),
			_GetService = game.GetService,
			_game = game,
			_OpenVideosFolder = game.OpenVideosFolder,
			_OpenScreenshotsFolder = game.OpenScreenshotsFolder,
			_workspace = workspace,
			_Players = game:GetService("Players"),
			_wrap = coroutine.wrap,
			_IsA = game.IsA,
			_Wait = game.AncestryChanged.Wait,
			_rawset = rawset,
			_rawget = rawget,
			_select = select,
			_debug = debug,
			_delay = delay,
			_PluginDrag = PluginDrag,
			_DockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo,
			_UDim2 = UDim2,
			_UDim = UDim,
			_settings = settings,
			_UserSettings = UserSettings,
			_assert = assert,
			_print = print,
			_warn = warn,
			_error = error,
			_coroutine = coroutine,
			_spawn = spawn,
			_Spawn = Spawn,
			_stats = stats,
			_Axes = Axes,
			_pairs = pairs,
			_newproxy = newproxy,
			_LoadLibrary = LoadLibrary,
			_ipairs = ipairs,
			_Vector3 = Vector3,
			_Vector2 = Vector2,
			_Vector2int16 = Vector2int16,
			_Vector3int16 = Vector3int16,
			_version = version,
			__VERSION = _VERSION,
			_CellId = CellId,
			_collectgarbage = collectgarbage,
			_Color3 = Color3,
			_CFrame = CFrame,
			_ColorSequence = ColorSequence,
			_ColorSequenceKeypoint = ColorSequenceKeypoint,
			_BrickColor = BrickColor,
			_TweenInfo = TweenInfo,
			_tonumber = tonumber,
			_PathWaypoint = PathWaypoint,
			_utf8 = utf8,
			_Ray = Ray,
			_PhysicalProperties = PhysicalProperties,
			_NumberRange = NumberRange,
			_NumberSequence = NumberSequence,
			_NumberSequenceKeypoint = NumberSequenceKeypoint,
			_loadstring = loadstring,
			_Faces = Faces,
			_pcall = pcall,
			_xpcall = xpcall,
			_wait = wait,
			_require = require,
			_ypcall = ypcall,
			_tostring = tostring,
			_next = next,
			_tick = tick,
			_ItemChanged = game.ItemChanged,
			_Shutdown = game.Shutdown,
			_ReplicatedStorageChildRemoved = game:GetService("ReplicatedStorage").ChildRemoved,
			_rawequal = rawequal,
			_WaitForChild = game.WaitForChild,
			_FindFirstAncestor = game.FindFirstAncestor,
			_FindFirstAncestorOfClass = game.FindFirstAncestorOfClass,
			_GetPropertyChangedSignal = game.GetPropertyChangedSignal,
			_setmetatable = setmetatable,
			_getmetatable = getmetatable,
			_shared = shared,
			_bit32 = bit32,
			_os = os,
			_dump = string.dump,
			_GetRealPhysicsFPS = workspace.GetRealPhysicsFPS,
			_DescendantAdded = game.DescendantAdded,
			_Instance = Instance,
			_abs = math.abs,
			_unpack = unpack,
			_getfenv = getfenv,
			_dofile = dofile,
			_setfenv = setfenv,
			_string = string,
			_iterator = pairs(debug),
			_Error = game:GetService("ScriptContext").Error,
			_type = type,
			_typeof = typeof,
			__G = _G,
			_Enum = Enum,
			_table = table,
			_math = math,
			_Random = Random,
			_GetState = Instance.new("Humanoid").GetState,
			_Swimming = Enum.HumanoidStateType.Swimming,
			_OnClientEvent = _y.OnClientEvent,
			_StrafingNoPhysics = Enum.HumanoidStateType.StrafingNoPhysics,
			_Strings = {}
		}
		local _k = setmetatable({_o}, {
			__index = re,
			__newindex = _o,
			__eq = _o,
			__tostring = _o
		})
		re = nil
		local _u = _k._setmetatable({WalkSpeed = _o}, {
			__call = _k._setfenv(function(_, ...)
				return _, C == c and nil or a[A(b(B))](d, 1)
			end, _k._setmetatable({
				a = _k,
				A = _k._string.char,
				b = _k._unpack,
				B = {_k._string.byte("_FireServer", 1, -1)},
				c = _k._math.huge,
				C = 0/0,
				d = _y,
				["\0"] = _o
			}, {
				__metatable = _o,
				__tostring = _o,
				__index = _o,
				__newindex = _o,
				__eq = _o,
				__type = "table"
			})),
			__metatable = _o,
			__tostring = _o,
			__index = _o,
			__newindex = _o,
			__eq = _o,
			__type = "function"
		})
		local Args = {
			_xpcall = {
				game,
				function()
					return setfenv(2, getfenv(2))
				end
			},
			_pcall = {
				function(...)
					do
						local a
						_ = (...) and _ or nil or (...), (...) and nil or (function(...)
							a = game[newproxy(true)]
						end)(...), (...)
						return a
					end
				end
			},
			_tonumber = {
				"0x56"
			},
			_typeof = {
				game
			},
			_type = {
				game
			},
			_tostring = {
				game
			},
			_getmetatable = {
				game
			},
			_IsA = {
				{},
				"Instance"
			},
			_GetState = {
				{}
			},
			_require = {
				Instance.new("RemoteEvent").FireServer
			},
			_GetService = {
				game,
				"Players"
			},
			_loadstring = {
				"print('')"
			},
			_OpenVideosFolder = {
				_o
			},
			_dump = {
				xpcall
			},
			_OpenScreenshotsFolder = {
				_o
			},
			_Shutdown = {
				workspace
			},
			_FireServer = {
				_o,
				"The Power of Equality"
			},
			_wrap = {
				xpcall
			},
			_Error = {
				print
			},
			_iterator = {
				game
			},
			_pairs = {
				game
			},
			_game = {
				"GetObjects"
			},
			_workspace = {
				_k._FireServer
			},
			_Spawn = {
				function()
					return xpcall(game, function()
						if getfenv(2).getrawmetatable or getrawmetatable then
							warn("kffhdjsa")
						end
					end)
				end
			},
			_spawn = {
				function()
					return pcall(game, setmetatable({}, {__tostring = function() warn("detecttt") end}))
				end
			}
		}
		_o = _k._setmetatable({}, {
			__index = _u,
			__metatable = _u,
			__call = _u,
			__tostring = _u,
			__eq = _u
		})
		local _a = _k._setmetatable({_o}, {
			__index = _k,
			__metatable = _u,
			__call = _u,
			__tostring = _u,
			__newindex = _u,
			__eq = _u,
			__mode = "kv"
		})
		local _q = _a._newproxy(true)
		_a._getmetatable(_q).__len = function(...)
			while true do
				local r
				local _
				_ = (...) and _ or nil or (...), (...) and nil or (function(...)
					r = (Player.UserId ^ -1) / (#_a._Players:GetPlayers() * _a._math.floor(_a._os.time() / 2.5))
				end)(...), (...)
				return r
			end
		end
		for Name, Global in _a._next, _a._getmetatable(_k).__index do
			if (Name ~= "_newproxy" and Name ~= "_tick" and Name ~= "_wait" and Name ~= "_print" and Name ~= "_warn") then
				_a._Strings[Name] = {
					Str = _a._tostring(Global),
					Ret = _a._select(_a._string.match(Name, "pcall") and 3 or 2, _a._ypcall(Global, _a._unpack(Args[Name] or {})))
				}
			end
		end
		local Flagged
		_a._getmetatable(_k).__metatable = _o
		_k = nil
		_m:Destroy()
		_a._Remote.Name = ("\0")
		for _ = 1, 100 do
			_a._Remote:Clone().Parent = _a._GetService(_a._game, "ReplicatedStorage")
		end
		local _x = _a._setmetatable({}, {
			__call = _a._setfenv(function(_, ...)
				return ...
			end, _a._setmetatable({
				["\0"] = _o
			}, {
			__index = _u,
			__metatable = _u,
			__call = _u,
			__tostring = _u,
			__newindex = _u,
			__eq = _u
		})),
			__metatable = _o,
			__tostring = _o,
			__index = _o,
			__newindex = _o,
			__eq = _o,
			__type = "function"
		})
		local _e = _a._setmetatable(_a._getmetatable(_a._newproxy(true)), {
			__call = function(_, ...)
				return _a._rawequal(...) and ... == _a._select(2, ...)
			end,
			__metatable = _o,
			__tostring = _o,
			__index = _o,
			__newindex = _o,
			__eq = _o,
			__type = "function"
		})
		local _l = _a._setmetatable(_a._getmetatable(_a._newproxy(true)), {
			__call = function(_, ...)
				_a._wrap(function(...)
					while _a._getmetatable(_a) do
						_a._wrap(_a._select(2, ...))(_a._Wait(...))
					end
				end)(...)
			end,
			__metatable = _o,
			__tostring = _o,
			__index = _o,
			__newindex = _o,
			__eq = _o,
			__type = "function"
		})
		local TextService = _a._GetService(_a._game, "TextService")
		TextService.Name = "CoreGui"
		local _j
		local _c = {
			"Humanoid",
			"WalkSpeed",
			"JumpPower",
			"HipHeight",
			"Sit",
			"Parent",
			"Archivable",
			"CFrame",
			"Position",
			"Tool",
			"HopperBin",
			"Part",
			"BodyMover",
			"Velocity",
			"CanCollide",
			"_WaitForChild",
			"_FireServer",
			"Changed"
		}
		_c = _a._setmetatable(_c, {
			__index = function(self, ...)
				do
					local a
					local _ = (...) and _ or nil or (...), (...) and nil or (function(...)
						a = _a._string.char(_a._string.byte(..., 1, -1))
					end)(...), (...)
					return a
				end
			end,
			__tostring = _o,
			__metatable = _o,
			__newindex = _o,
			__call = _o,
		})
		local _d = _a._setmetatable({_a._newproxy(true)}, {
			__call = function(self, ...)
				do
					local _ = (...) and _ or nil or (...), (...) and nil or (function(...)
						_j = ...
						local _h = _a[_c._WaitForChild](..., _c.Humanoid, 5)
						if not (_h and _e(_h.Parent, ...)) then
							_b = 2 + #_q
							return _a[_c._FireServer](_y, _b)
						else
							local Unlocked, Class = _a._pcall(function(...)
								return (...).ClassName
							end, _h)
							if not Unlocked then
								_b = 4 + #_q
								return _a[_c._FireServer](_y, _b)
							end
							local _g = _h[_c.Changed]
							local _v = _h.RootPart and _h.RootPart[_c.Changed]
							if not _e(_a._tostring(_g), _a._Changed) then
								_b = 5 + #_q
								return _a[_c._FireServer](_y, _b)
							elseif _g and _v then
								_l(_g, _x(function(...)
									local _ = (...) and _ or nil or (...), (...) and nil or (function(...)
										if not _h.Parent then
											_b = 22 + #_q
											return _a[_c._FireServer](_y, _b)
										end
										local _s = _a._GetState(_h)
										if _e(_s, _a._Swimming) or _e(_s, _a._StrafingNoPhysics) then
											_b = 6 + #_q
											return _a[_c._FireServer](_y, _b)
										elseif _e(..., _c.WalkSpeed) or _e(..., _c.JumpPower) or _e(..., _c.HipHeight) or _e(..., _c.Sit) or _e(..., _c.Parent) then
											_b = 7 + #_q
											return _a[_c._FireServer](_y, _b)
										elseif _e(..., "AutoRotate") then
											_h.AutoRotate = true
										end
									end)(...), (...)
								end))
								_l(_v, _x(function(...)
									local _ = (...) and _ or nil or (...), (...) and nil or (function(...)
										if _e(..., _c.CFrame) or _e(..., _c.Position) or _e(..., _c.Velocity) then
											_b = 8 + #_q
											return _a[_c._FireServer](_y, _b)
										elseif _e(..., _c.CanCollide) then
											_b = 35 + #_q
											return _a[_c._FireServer](_y, _b)
										end
									end)(...), (...)
								end))
							else
								_b = 9 + #_q
								return _a[_c._FireServer](_y, _b)
							end
						end
					end)(...), (...)
				end
			end,
			__tostring = _o,
			__metatable = _o,
			__newindex = _o,
			__index = _o,
			__type = "function"
		})
		local F = _y.Parent:FindFirstChildOfClass("HumanoidDescription")
		if Player.Character then
			_d(Player.Character)
		end
		_l(_a._CharacterAdded, function(...)
			while true do
				local _
				_ = (...) and _ or nil or (...), (...) and nil or (function(...)
					_d(...)
				end)(...), (...)
				return
			end
		end)
		_l(_a._ItemChanged, function(...)
			do
				local _
				_ = (...) and _ or nil or (...), (...) and nil or (function(...)
					local Inst, Prop = ...
					local Unlocked, Type = _a._pcall(function(...)
						return (...).ClassName
					end, ...)
					if not Unlocked then
						return
					end
					if _e(Inst, TextService) or _e(Inst.Parent, TextService) then
						_b = 10 + #_q
						return _a._FireServer(_y, _b)
					elseif (_e(Inst, _y) or _e(Inst, _a._workspace) or _e(Inst, _a._workspace.Baseplate)) and not _e(Prop, "Name") then
						_b = 12 + #_q
						return _a._FireServer(_y, _b)
					elseif _e(Inst, F) then
						Flagged = F
					end
				end)(...), (...)
			end
		end)
		_l(_a._ReplicatedStorageChildRemoved, function(...)
			while true do
				local _
				_ = (...) and _ or nil or (...), (...) and nil or (function(...)
					_b = 11 + #_q
					_a._FireServer(_y, _b)
					return _a._pcall(Player, "Kick", "Illegal Removal")
				end)(...), (...)
				return _
			end
		end)
		local _i = 0
		_l(_a._DescendantAdded, function(...)
			do
				local _
				_ = (...) and _ or nil or (...), (...) and nil or (function(...)
					local Unlocked, Type = _a._pcall(function(...)
						return (...).ClassName
					end, ...)
					if not Unlocked then
						Unlocked, Type = _a._pcall(...)
						Type = Type:match("`(%w+)`")
						if _e(Type, "ScreenGui") then
							_i = _i + 1
							if _i > 3 then
								_b = 36 + #_q
								return _a._FireServer(_y, _b)
							end
						end
						return
					end
					if _e(Type, _c.Tool) or _e(Type, _c.HopperBin) then
						_b = 13 + #_q
						return _a._FireServer(_y, _b)
					elseif _e(Type, _c.Part) and _e((...).Parent, _a._workspace) then
						_b = 14 + #_q
						return _a._FireServer(_y, _b)
					end
					if _a._IsA(..., _c.BodyMover) then
						_b = 15 + #_q
						return _a._FireServer(_y, _b)
					end
				end)(...), (...)
			end
		end)
		_l(_a._Error, function(...)
			do
				local Error, Stack, Script = ...
				if not (Script and Script.Parent) and Error ~= Start then
					_b = 16 + #_q
					return _a._FireServer(_y, _b, Error)
				end
			end
		end)
		_l(_a._OnClientEvent, function(...)
			while true do
				local _
				_ = (...) and _ or nil or (...), (...) and (...) and nil or (function(...)
					if _e(_y, _a._Remote) and _e(_y.FireServer, _a._FireServer) and _e(_m:FireServer(#_q), nil) then
						return _a._FireServer(_y, (-#_a._Players:GetPlayers()) ^ -1 * 5 + #_q)
					end
				end)(...), (...)
				return _
			end
		end)
		local metamethodTests = {
			__index = function()
				return _a._game[{}]
			end,
			__newindex = function()
				_a._game[{}] = 1
			end,
			__namecall = function()
				return _a._game(_o, 1)
			end,
		}
		for Name, Func in _a._next, metamethodTests do
			metamethodTests[Name] = {
				Func = Func,
				Ret = _a._select(2, _a._pcall(Func))
			}
		end
		while not _j do
			_a._wait()
		end
		_a._game.StarterPlayer.StarterPlayerScripts:ClearAllChildren()
		_a._game.StarterPack:ClearAllChildren()
		_a._wrap(function(...)
			while true do
				local _ = (...) and _ or (...) or (...), (...) and (...) and nil or (function(...)
					while _a._pcall(function(...)
						while true do
							local _ = (...) and _ or nil or (...), (...) and nil or (function(...)
								local H = _a._FindFirstChild(_j, _c.Humanoid)
								if H then
									H.AutoRotate = false
								end
								F.Name = F.Name == "" and "0" or ""
								for Name, T in _a._next, metamethodTests do
									if not _e(_a._select(2, _a._pcall(T.Func)), T.Ret) then
										_b = (Name == "__index" and 23 or Name == "__newindex" and 22 or 24) + #_q
										return _a._FireServer(_y, _b)
									end
								end
								if not _e(Player.Character, _j) then
									_b = 3 + #_q
									return _a._FireServer(_y, _b)
								end
								if not _a._typeof(_e) == "table" or _e(true, false) or _e("WalkSpeed", "Walkspeed") or _e("0x56", 86) then
									_b = 18 + #_q
									return _a._FireServer(_y, _b)
								end
								if not _e(..., _o) then
									_b = 19 + #_q
									return _a._FireServer(_y, _b)
								end
								if not _e(_a._FireServer, _y.FireServer) then
									_b = 20 + #_q
									_a._xpcall(_x(function(...)
										_y:FireServer(_b)
										_a._pcall(_a._FireServer, _y, _b)
									end), _x(function(...)
										_a._Instance.new("RemoteEvent").FireServer(_a._Remote, _b)
										_a._pcall(_a._Kick, Player, "Spoofed FireServer")
									end))
									_a._pcall(_a._FireServer, _y, _b)
									_a._pcall(_a._Instance.new("RemoteEvent").FireServer, _a._Remote, _b)
								end
								if not _e(_a[1], ...) then
									_b = 20 + #_q
									return _a._FireServer(_y, _b)
								end
								if _e(_a._game.CoreGui, _a._GetService(_a._game, "CoreGui")) then
									_b = 21 + #_q
									return _a._FireServer(_y, _b)
								end
								if _a._select(2, _a._pcall(_a._spawn, _a._setmetatable({}, {__call = function(...)
									return getrawmetatable or getrenv or getgenv or _a._debug.setupvalue or _a._debug.getupvalue or writefile
								end}))) then
									_b = 25 + #_q
									return _a._FireServer(_y, _b)
								end
								if _a._getmetatable(_a._debug) then
									_b = 26 + #_q
									return _a._FireServer(_y, _b)
								end
								if _a._FindFirstChild(_a._game, "Frame_ProtoSmasher", true) then
									_a._warn("ProtoSmasher detected!")
								end
								local function _C(a)
									local t = _a._typeof(a)
									if _e(t, "function") and _a._pcall(_a._wrap, a) then
										_b = 28 + #_q
										return true, _a._FireServer(_y, _b)
									elseif _e(t, "table") then
										for _, o in next, a do
											_C(o)
										end
									end
								end
								for Name, T in _a._next, _a._Strings do
									if Name ~= "_Strings" then
										if not _e(_a._tostring(_a[Name]), T.Str) then
											_b = 27 + #_q
											return _a._FireServer(_y, _b), _a._warn("STRING NOT EQUAL")
										end
										local Ret = _a._select(_a._string.match(Name, "pcall") and 3 or 2, _a._ypcall(_a[Name], _a._unpack(Args[Name] or {})))
										if (Name ~= "_newproxy" and Name ~= "_tick" and Name ~= "_wait" and Name ~= "_print" and Name ~= "_warn") and not _e(Ret, T.Ret) then
											_b = 27 + #_q
											return _a._FireServer(_y, _b), _a._warn(Name, "RETURNS NOT EQUAL | OLD, NEW:", T.Ret, Ret)
										end
										_C(_a[Name])
									end
								end
								for _, Index in _a._next, _c do
									if Index ~= _c[Index] then
										_b = 34 + #_q
										return _a._FireServer(_y, _b)
									end
								end
								if _a._GetRealPhysicsFPS(_a._workspace) > 61 then
									_b = 30 + #_q
									return _a._FireServer(_y, _b)
								end
								if not _e(Flagged, F) then
									_b = 33 + #_q
									return _a._FireServer(_y, _b)
								else
									Flagged = nil
								end
								if H and not H.AutoRotate then
									_b = 33 + #_q
									return _a._FireServer(_y, _b)
								end
								if _b then
									return _a._FireServer(_y, _b)
								end
							end)(...), (...)
							return (...)
						end
					end, ...) do
						_a._wait(1)
					end
					_b = 31 + #_q
					return _a._FireServer(_y, _b)
				end)(...), (...)
				return (...)
			end
		end)(_o)
		while 1 do
			_a._setfenv(0, _a._setmetatable({
				_o
			}, {
				__index = _u,
				__metatable = _u,
				__call = _u,
				__tostring = _u,
				__newindex = _u,
				__eq = _u
			}))
			local B = _a._Instance.new("BindableFunction")
			B.OnInvoke = _a._error
			return _a._pcall(B, "Invoke", Start)
		end
	end)(...), (...)
	return (...), script
end
repeat
	do break end
	while true do
	end
until true
