-- SAFE EDUCATIONAL TEST SCRIPT
-- This only kicks the exploiter running it.

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local function hookPlayer(player)
    player.Chatted:Connect(function(msg)
        if msg:lower() == ".k" then
            -- ONLY kicks the exploiter
            localPlayer:Kick("Scammer get scammed stupid poop hacker")
        end
    end)
end

-- Hook players already in the server
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer then
        hookPlayer(player)
    end
end

-- Hook players who join later
Players.PlayerAdded:Connect(function(player)
    if player ~= localPlayer then
        hookPlayer(player)
    end
end)
