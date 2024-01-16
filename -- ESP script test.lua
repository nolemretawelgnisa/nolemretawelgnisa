-- ESP script test

local Players = game:GetService("Players")
local function outlineAllPlayers()
    for _, player in pairs(Player:GetPlayers()) do
        local outline = play.Character:FindFirstChildOfClass("SelectionBox")
        if not outline then
            outline = Instance.new("SelectionBox")
            outline.Color3 = Color3.new(255,0,255) -- magenta
            outline.LineThickness = 1
            outline.Adornee = player.Character
            outline.Parent = player.Character
        end
        player.CharacterRemoving:Connect(function)
            outline.Destory(
        end)
    end
end
