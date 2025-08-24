-- LocalScript under StarterGui or triggered by pet action
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "GrowGardenMessageGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Background frame (rounded gray box)
local bg = Instance.new("Frame")
bg.Parent = gui
bg.Size = UDim2.new(0, 800, 0, 50)
bg.Position = UDim2.new(0.5, -400, 0.05, 0)
bg.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
bg.BackgroundTransparency = 0.3
bg.BorderSizePixel = 0
bg.ZIndex = 9

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = bg

-- Text label
local message = Instance.new("TextLabel")
message.Parent = bg
message.Size = UDim2.new(1, 0, 1, 0)
message.BackgroundTransparency = 1
message.TextScaled = true
message.Font = Enum.Font.FredokaOne
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextStrokeTransparency = 0
message.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
message.Text = "✅ Lemon Lion infused Dazzy Eagle with citrus, granting 1826.21 EXP!"
message.ZIndex = 10

-- Optional: fade out after 3 seconds
wait(3)
for i = 1, 10 do
    bg.BackgroundTransparency = 0.3 + i * 0.07
    message.TextTransparency = i * 0.1
    message.TextStrokeTransparency = i * 0.1
    wait(0.05)
end
gui:Destroy()
