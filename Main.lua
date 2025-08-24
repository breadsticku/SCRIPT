-- LocalScript under StarterGui or wherever slot switching is handled
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "GrowGardenMessageGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Background frame
local bg = Instance.new("Frame")
bg.Parent = gui
bg.Size = UDim2.new(0, 900, 0, 60)
bg.Position = UDim2.new(0.5, -450, 0.05, 0)
bg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
bg.BackgroundTransparency = 0.2
bg.BorderSizePixel = 0
bg.ZIndex = 10

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 16)
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
message.Text = "✅ Hello world"
message.ZIndex = 11

-- Optional: fade out after 3 seconds
wait(3)
for i = 1, 10 do
    bg.BackgroundTransparency = 0.2 + i * 0.08
    message.TextTransparency = i * 0.1
    message.TextStrokeTransparency = i * 0.1
    wait(0.05)
end
gui:Destroy()
