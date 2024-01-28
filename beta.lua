local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modify weapon properties
for _, weapon in pairs(ReplicatedStorage.Weapons:GetChildren()) do
    if weapon and weapon:FindFirstChild('Ammo') and weapon:FindFirstChild('Bullets') and weapon:FindFirstChild('EquipTime') and weapon:FindFirstChild('FireRate') and weapon:FindFirstChild('StoredAmmo') and weapon:FindFirstChild('Spread') and weapon:FindFirstChild('Recoil') then
        weapon:FindFirstChild('Ammo').Value = 2500
        weapon:FindFirstChild('EquipTime').Value = 0.01
        weapon:FindFirstChild('StoredAmmo').Value = 2500
        weapon:FindFirstChild('Spread').Value = 0.01
        weapon:FindFirstChild('Recoil').Value = 0.01
    end
end

-- Execute the other code
local IDBody = ReplicatedStorage.Events.IDBody

IDBody:FireServer("id", {
    Identified = {Value = false},
    Name = "$ Server hacked by ImNotRetard $",
    Role = {Value = "Winning backdoor"}
})

while true do
    wait(1)

    -- Modify player status
    IDBody:FireServer("id", {Identified = workspace.Status.CanRespawn})

    -- Respawn infinitely
    IDBody:FireServer("id", {Identified = workspace.Status.CanRespawn})

    -- Warmup identification
    IDBody:FireServer("id", {Identified = ReplicatedStorage.Warmup})

    -- Modify weapon properties dynamically
    for _, weapon in pairs(ReplicatedStorage.Weapons:GetChildren()) do
        if weapon:FindFirstChild("Auto") then
            IDBody:FireServer("id", {Identified = weapon.Auto})
        end
        if weapon:FindFirstChild("FireRate") then
            IDBody:FireServer("id", {Identified = weapon.FireRate})
        end
        if weapon:FindFirstChild("Spread") then
            IDBody:FireServer("id", {Identified = weapon.Spread})
        end
        if weapon:FindFirstChild("Recoil") then
            IDBody:FireServer("id", {Identified = weapon.Recoil.AngleX})
            IDBody:FireServer("id", {Identified = weapon.Recoil.AngleY})
        end
    end
end
