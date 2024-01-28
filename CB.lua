game.ReplicatedStorage.Events.IDBody:FireServer("id", {
    Identified = {Value = false},
    Name = "$ Server hacked by novahook.xyz $",
    Role = {Value = "Nice skid!"}
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
	game.RunService.Heartbeat:Connect(function()
   		game.ReplicatedStorage.Events.ThrowGrenade:FireServer(game.ReplicatedStorage.Weapons["Incendiary Grenade"].Model, nil, 25, 35, Vector3.new(0, 0, 0), "", "")
	end)
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
