-- LocalScript inside StarterGui or triggered by pet ability
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "CitrusMessageGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local message = Instance.new("TextLabel")
message.Parent = gui
message.Size = UDim2.new(0, 800, 0, 40)
message.Position = UDim2.new(0.5, -400, 0.05, 0) -- Top center
message.BackgroundTransparency = 1
message.TextScaled = true
message.Font = Enum.Font.FredokaOne -- Grow a Garden uses FredokaOne or similar
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextStrokeTransparency = 0
message.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
message.Text = "Lemon Lion infused Dazzy Eagle with citrus, granting 1826.21 EXP!"
message.ZIndex = 10

-- Optional: fade out after 3 seconds
wait(3)
for i = 1, 10 do
    message.TextTransparency = i * 0.1
    message.TextStrokeTransparency = i * 0.1
    wait(0.05)
end
message:Destroy()
