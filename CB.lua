game.ReplicatedStorage.Events.IDBody:FireServer("id", {
    Identified = {Value = false},
    Name = "$ Server hacked by ImNotRetard $",
    Role = {Value = "Winning backdoor"}
})
a=1
while a==1 do
    wait(1)
    local IDBody = game:GetService("ReplicatedStorage").Events.IDBody
    IDBody:FireServer("id", {Identified = workspace.Status.CanRespawn}) -- you can now respawn infinitely!!!!!
    game.ReplicatedStorage.Events.IDBody:FireServer("id", {Identified = workspace.Status.CanRespawn})
    game.ReplicatedStorage.Events.IDBody:FireServer("id", {Identified = game.ReplicatedStorage.Warmup})
    for i,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
        if v:FindFirstChild("Auto") then
            game.ReplicatedStorage.Events.IDBody:FireServer("id", {Identified = v.Auto})
        end
        if v:FindFirstChild("FireRate") then
            game.ReplicatedStorage.Events.IDBody:FireServer("id", {Identified = v.FireRate})
        end
        if v:FindFirstChild("Spread") then
            game.ReplicatedStorage.Events.IDBody:FireServer("id", {Identified = v.Spread})
        end
	if v:FindFirstChild("Players") then
	    game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = plr.Character.Gun,Name = "USP"}, game.Players.LocalPlayer) -- bring people to you
	    game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = game:GetService("Workspace"):FindFirstChild("C4"),Name = "USP"}, game.Players.LocalPlayer) -- duplicate bomb
	    game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = game:GetService("ReplicatedStorage").Hostage,Name = "USP"}, game.Players.LocalPlayer)
	end
	if game:GetService("Workspace"):FindFirstChild("C4") then -- crash the server bomb must be planted
  		 for i = 0,5000 do
      		 game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer({Model = game:GetService("Workspace"):FindFirstChild("C4"),Name = "USP"}, game.Players.LocalPlayer)
      		 wait()
  	 end
        if v:FindFirstChild("Recoil") then
            game.ReplicatedStorage.Events.IDBody:FireServer("id", {Identified = v.Recoil.AngleX})
            game.ReplicatedStorage.Events.IDBody:FireServer("id", {Identified = v.Recoil.AngleY})
        end
    end
end

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
local oldNewIndex = mt.__newindex
setreadonly(mt,false)
mt.__namecall = function(self, ...)
	local method = tostring(getnamecallmethod())
local args = {...}

    if method == "Kick" then
		return
	end
end
