local Enabled = true
local hideDead = true

local FillTransparency = 0
local OutlineTransparency = 1

local FillColor = Color3.fromRGB(255, 255, 0)
local OutlineColor = Color3.fromRGB(255, 255, 0)

local DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
--------------------------------------------------------
if game:GetService("CoreGui"):FindFirstChild("ScrapHighlight") then game:GetService("CoreGui"):FindFirstChild("ScrapHighlight"):Destroy() end

local Storage = Instance.new("Folder")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

Storage.Name = "ScrapHighlight"
Storage.Parent = game.CoreGui

if Enabled == false then
	Storage:Destroy()
end

local function CreateHighlight(scrap)
	local NewHighlight = Instance.new("Highlight", Storage)
	NewHighlight.FillTransparency = FillTransparency
	NewHighlight.OutlineTransparency = OutlineTransparency
	NewHighlight.Adornee = scrap
	NewHighlight.Enabled = Enabled
	NewHighlight.DepthMode = DepthMode

	local bb = RunService.RenderStepped:Connect(function()
		NewHighlight.FillColor = Color3.new(255,255,0)
		NewHighlight.OutlineColor = OutlineColor
	end)

	--[[
	rake.Destroying:Connect(function()
		NewHighlight:Destroy()
		bb:Disconnect()
	end)
	]]
end

for _,v in pairs(game:GetService("Workspace").Filter.ScrapSpawns:GetDescendants()) do
	if v:IsA("Model") then
		CreateHighlight(v);
	end
end

game:GetService("Workspace").Filter.ScrapSpawns.DescendantAdded:Connect(function(v)
	if v:IsA("Model") then
		CreateHighlight(v);
	end
end)