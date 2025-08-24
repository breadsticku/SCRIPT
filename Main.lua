local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui"):FindFirstChild("PetInfoGui")

if gui then
    local petNameLabel = gui:FindFirstChild("PetName")
    local petDescLabel = gui:FindFirstChild("PetDescription")

    if petNameLabel then petNameLabel.Text = "Lemon Lion [Mythical]" end
    if petDescLabel then petDescLabel.Text = "Hello World! This is a custom description." end
else
    warn("PetInfoGui not found in PlayerGui")
end
