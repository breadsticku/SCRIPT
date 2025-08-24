-- Assume this is inside a LocalScript under a ScreenGui
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui"):WaitForChild("PetInfoGui") -- Replace with your actual GUI name

-- Access text labels inside the GUI
local petNameLabel = gui:WaitForChild("PetName")
local petDescLabel = gui:WaitForChild("PetDescription")
local weightLabel = gui:WaitForChild("Weight")
local ageLabel = gui:WaitForChild("Age")
local expBar = gui:WaitForChild("ExpBar")
local hungerBar = gui:WaitForChild("HungerBar")

-- Custom values
petNameLabel.Text = "Lemon Lion [Mythical]"
petDescLabel.Text = "Hello World! This is a custom description."
weightLabel.Text = "Weight: 1.75 KG"
ageLabel.Text = "Age: 4"
expBar.Size = UDim2.new(115.91/329, 0, 1, 0)
hungerBar.Size = UDim2.new(49071.71/50000, 0, 1, 0)
