local Enabled = true
local hideDead = true

local FillTransparency = 0
local OutlineTransparency = 0

local FillColor = Color3.fromRGB(0, 0, 255)
local OutlineColor = Color3.fromRGB(0, 0, 255)

local DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
--------------------------------------------------------
if game:GetService("CoreGui"):FindFirstChild("RakeHighlight") then game:GetService("CoreGui"):FindFirstChild("RakeHighlight"):Destroy() end

local Storage = Instance.new("Folder")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

Storage.Name = "RakeHighlight"
Storage.Parent = game.CoreGui

if Enabled == false then
	Storage:Destroy()
end

local function CreateHighlight(rake)
	local NewHighlight = Instance.new("Highlight", Storage)
	NewHighlight.FillTransparency = FillTransparency
	NewHighlight.OutlineTransparency = OutlineTransparency
	NewHighlight.Adornee = rake
	NewHighlight.Enabled = Enabled
	NewHighlight.DepthMode = DepthMode

	local bb = RunService.RenderStepped:Connect(function()
		NewHighlight.FillColor = FillColor
		NewHighlight.OutlineColor = OutlineColor
	end)

	--[[
	rake.Destroying:Connect(function()
		NewHighlight:Destroy()
		bb:Disconnect()
	end)
	]]
end

if workspace:FindFirstChild("FlareGunPickUp") then
	CreateHighlight(workspace:FindFirstChild("FlareGunPickUp").FlareGun)
end

workspace.ChildAdded:Connect(function(v)
	if v.Name == "FlareGunPickUp" then
		CreateHighlight(v.FlareGun);
	end
end)