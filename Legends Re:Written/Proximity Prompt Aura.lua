local player = game:GetService("Players").LocalPlayer
local radius = 50

while task.wait(0.1) do
	local parts = workspace:GetPartBoundsInRadius(player.Character:WaitForChild("HumanoidRootPart").Position, radius)
	for _, part in ipairs(parts) do
		if part:FindFirstChild("ProximityPrompt") and string.find(part:GetFullName(), "Plants") then
			fireproximityprompt(part.ProximityPrompt)
		end
	end
end
