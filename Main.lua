-- Place this in a LocalScript under StarterGui or inside a pet activation script
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "CitrusMessageGui"

local message = Instance.new("TextLabel", gui)
message.Size = UDim2.new(0, 600, 0, 50)
message.Position = UDim2.new(0.5, -300, 0.1, 0)
message.BackgroundTransparency = 1
message.TextScaled = true
message.Font = Enum.Font.FredokaOne
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextStrokeTransparency = 0.5
message.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
message.Text = "Lemon Lion infused Dazzy Eagle with citrus, granting 1826.21 EXP!"

-- Optional: fade out after a few seconds
wait(3)
for i = 1, 10 do
    message.TextTransparency = i * 0.1
    message.TextStrokeTransparency = 0.5 + i * 0.05
    wait(0.1)
end
message:Destroy()
