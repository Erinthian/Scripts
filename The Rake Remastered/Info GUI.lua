-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TimeLabel = Instance.new("TextLabel")
local PowerLabel = Instance.new("TextLabel")
local UsageLabel = Instance.new("TextLabel")

-- Variables:

local Time = game:GetService("ReplicatedStorage").Timer.Value
local Power = game:GetService("ReplicatedStorage").PowerValues.PowerLevel.Value

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TimeLabel.Name = "TimeLabel"
TimeLabel.Parent = ScreenGui
TimeLabel.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
TimeLabel.BackgroundTransparency = 0.400
TimeLabel.BorderSizePixel = 0
TimeLabel.Position = UDim2.new(0.847560942, 0, 0, 0)
TimeLabel.Size = UDim2.new(0.152439028, 0, 0.035005834, 0)
TimeLabel.Font = Enum.Font.Arcade
TimeLabel.Text = "Time: 1:00"
TimeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TimeLabel.TextSize = 30.000
TimeLabel.TextXAlignment = Enum.TextXAlignment.Right

PowerLabel.Name = "PowerLabel"
PowerLabel.Parent = ScreenGui
PowerLabel.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
PowerLabel.BackgroundTransparency = 0.400
PowerLabel.BorderSizePixel = 0
PowerLabel.Position = UDim2.new(0.847561002, 0, 0.037339557, 0)
PowerLabel.Size = UDim2.new(0.152439028, 0, 0.035005834, 0)
PowerLabel.Font = Enum.Font.Arcade
PowerLabel.Text = "Power: 99%"
PowerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
PowerLabel.TextSize = 30.000
PowerLabel.TextXAlignment = Enum.TextXAlignment.Right

UsageLabel.Name = "UsageLabel"
UsageLabel.Parent = ScreenGui
UsageLabel.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
UsageLabel.BackgroundTransparency = 0.400
UsageLabel.BorderSizePixel = 0
UsageLabel.Position = UDim2.new(0.847561002, 0, 0.0746791139, 0)
UsageLabel.Size = UDim2.new(0.152439028, 0, 0.035005834, 0)
UsageLabel.Font = Enum.Font.Arcade
UsageLabel.Text = "Usage: 1"
UsageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UsageLabel.TextSize = 30.000
UsageLabel.TextXAlignment = Enum.TextXAlignment.Right

-- Scripts:

--[[
local function updateUsage()
	local Usage = 1

	local usingSHLight = game:GetService("ReplicatedStorage").PowerValues.UsingSHLight.Value
	local usingSHDoor = game:GetService("ReplicatedStorage").PowerValues.UsingSHDoor.Value
	local usingTowerLight = game:GetService("ReplicatedStorage").PowerValues.UsingTowerLight.Value
	
	if usingSHLight then
		Usage = Usage+1
	end
	
	if usingSHDoor then
		Usage = Usage+1
	end
	
	if usingTowerLight then
		Usage = Usage+1
	end
	
	UsageLabel = tostring(Usage)
end
]]

game:GetService("ReplicatedStorage").Timer.Changed:Connect(function()
	local min, sec = tostring(math.floor(Time/60)), tostring(Time%60)
	if #sec == 1 then
	sec = sec.."0"
	end
	
	TimeLabel.Text = tostring(min)..":"..tostring(sec)
end)

game:GetService("ReplicatedStorage").PowerValues.PowerLevel.Changed:Connect(function()
	if game:GetService("ReplicatedStorage").StationPower.Value == false then
		PowerLabel.Text = "0%"
	else
		PowerLabel.Text = tostring(math.floor(Power/1000*100) + 1)
	end
end)

--[[
game:GetService("ReplicatedStorage").PowerValues.UsingSHLight.Value.Changed:Connect(updateUsage())

game:GetService("ReplicatedStorage").PowerValues.UsingSHDoor.Value.Changed:Connect(updateUsage())

game:GetService("ReplicatedStorage").PowerValues.UsingTowerLight.Value.Changed:Connect(updateUsage())
]]