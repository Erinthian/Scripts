local map = Instance.new("ScreenGui")
map.Name = "Map"
map.IgnoreGuiInset = true
map.Enabled = false
map.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
map.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local map1 = Instance.new("ImageLabel")
map1.Name = "Map"
map1.Image = "rbxassetid://3015271194"
map1.ScaleType = Enum.ScaleType.Fit
map1.AnchorPoint = Vector2.new(0.5, 0.5)
map1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
map1.BackgroundTransparency = 1
map1.Position = UDim2.fromScale(0.5, 0.5)
map1.Size = UDim2.fromScale(0.9, 0.9)
map1.Parent = map

local uIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint.Parent = map1

map.Parent = game:GetService("CoreGui")

game:GetService("UserInputService").InputBegan:Connect(function(input, gPE)
	if input.KeyCode == Enum.KeyCode.M then
		map.Enabled = not map.Enabled
	end
end)