local timeGui = Instance.new("ScreenGui")
timeGui.Name = "TimeGui"
timeGui.IgnoreGuiInset = true

local timeLabel = Instance.new("TextLabel")
timeLabel.Name = "TimeLabel"
timeLabel.FontFace = Font.new(
  "rbxasset://fonts/families/SourceSansPro.json",
  Enum.FontWeight.Bold,
  Enum.FontStyle.Normal
)
timeLabel.Text = "Time: 00:00"
timeLabel.TextColor3 = Color3.fromRGB(250, 250, 250)
timeLabel.TextSize = 40
timeLabel.AnchorPoint = Vector2.new(1, 0.5)
timeLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
timeLabel.BackgroundTransparency = 0.9
timeLabel.Position = UDim2.fromScale(1, 0.5)
timeLabel.Size = UDim2.fromOffset(200, 50)
timeLabel.Parent = timeGui

local untilDawnLabel = Instance.new("TextLabel")
untilDawnLabel.Name = "UntilDawnLabel"
untilDawnLabel.FontFace = Font.new(
  "rbxasset://fonts/families/SourceSansPro.json",
  Enum.FontWeight.Bold,
  Enum.FontStyle.Normal
)
untilDawnLabel.Text = "Until Dawn"
untilDawnLabel.TextColor3 = Color3.fromRGB(250, 250, 250)
untilDawnLabel.TextSize = 20
untilDawnLabel.AnchorPoint = Vector2.new(1, 0)
untilDawnLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
untilDawnLabel.BackgroundTransparency = 0.9
untilDawnLabel.Position = UDim2.new(1, 0, 0.5, 27)
untilDawnLabel.Size = UDim2.fromOffset(100, 25)
untilDawnLabel.Parent = timeGui

timeGui.Parent = game:GetService("CoreGui")

game:GetService("Players").LocalPlayer.Backpack.Watch.Screen.SurfaceGui.Frame.TIME:GetPropertyChangedSignal("Text"):Connect(function()
	timeLabel.Text = "Time: "..game:GetService("Players").LocalPlayer.Backpack.Watch.Screen.SurfaceGui.Frame.TIME.Text
end)

game:GetService("Players").LocalPlayer.Backpack.Watch.Screen.SurfaceGui.Frame.Info:GetPropertyChangedSignal("Text"):Connect(function()
	if game:GetService("Players").LocalPlayer.Backpack.Watch.Screen.SurfaceGui.Frame.Info.Text == "(Game-Time)" then
		untilDawnLabel.Text = "Until Dawn"
	end
end)