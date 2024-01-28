game.ReplicatedStorage.Events.IDBody:FireServer("id", {
    Identified = {Value = false},
    Name = "$ Server hacked by ImNotRetard $",
    Role = {Value = "Winning backdoor"}
})

local a = 1

for i, v in next, game:GetService("ReplicatedStorage").Weapons:GetChildren() do
    if v and v:FindFirstChild('Ammo') and v:FindFirstChild('Bullets') and v:FindFirstChild('EquipTime') and v:FindFirstChild('FireRate') and v:FindFirstChild('StoredAmmo') and v:FindFirstChild('Spread') and v:FindFirstChild('Recoil') then
        v:FindFirstChild('Ammo').Value = 2500
        v:FindFirstChild('EquipTime').Value = 0.01
        v:FindFirstChild('StoredAmmo').Value = 2500
        v:FindFirstChild('Spread').Value = 0.01
        v:FindFirstChild('Recoil').Value = 0.01

        a = 1 -- reset the a variable
    end
end

while a==1 do
    wait(1)
    local IDBody = game:GetService("ReplicatedStorage").Events.IDBody
    IDBody:FireServer("id", {Identified = workspace.Status.CanRespawn})
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
