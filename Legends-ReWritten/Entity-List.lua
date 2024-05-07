print("Loadadeded")
--// Variables \\--
local UserInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local mobsFolder = workspace.Mobs
local dropsFolder = workspace.Drops
local selectedBoss
local selectedDrop

--// UI Settings \\--
local Font = Font.new("rbxasset://fonts/families/Ubuntu.json")
local MainColor = Color3.fromRGB(40, 40, 40)
local SecondaryColor = Color3.fromRGB(30, 30, 30)
local TextColor = Color3.fromRGB(250, 250, 250)

--// UI \\--
local Entities = Instance.new("ScreenGui")
Entities.IgnoreGuiInset = true

local EntitiesPadding = Instance.new("UIPadding")
EntitiesPadding.PaddingBottom = UDim.new(0.225, 0)
EntitiesPadding.PaddingLeft = UDim.new(0.225, 0)
EntitiesPadding.PaddingRight = UDim.new(0.225, 0)
EntitiesPadding.PaddingTop = UDim.new(0.225, 0)
EntitiesPadding.Parent = Entities

local Mainframe = Instance.new("ImageButton")
Mainframe.ImageTransparency = 1
Mainframe.AutoButtonColor = false
Mainframe.BackgroundColor3 = MainColor
Mainframe.BorderSizePixel = 0
Mainframe.Position = UDim2.fromScale(0.549, 0.243)
Mainframe.Size = UDim2.fromScale(0.49, 0.49)
Mainframe.Parent = Entities

local AspectRatio = Instance.new("UIAspectRatioConstraint")
AspectRatio.AspectRatio = 0.816
AspectRatio.Parent = Mainframe

local MainframePadding = Instance.new("UIPadding")
MainframePadding.PaddingBottom = UDim.new(0, 8)
MainframePadding.PaddingLeft = UDim.new(0, 8)
MainframePadding.PaddingRight = UDim.new(0, 8)
MainframePadding.PaddingTop = UDim.new(0, 8)
MainframePadding.Parent = Mainframe

local Close = Instance.new("TextButton")
Close.FontFace = Font
Close.Text = "X"
Close.TextColor3 = TextColor
Close.TextScaled = true
Close.AnchorPoint = Vector2.new(1, 0)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(1, 8, 0, -8)
Close.Size = UDim2.fromOffset(16, 16)
Close.ZIndex = 2
Close.Parent = Mainframe

local ClosePadding = Instance.new("UIPadding")
ClosePadding.PaddingLeft = UDim.new(0.2, 0)
ClosePadding.PaddingRight = UDim.new(0.2, 0)
ClosePadding.Parent = Close

local BossesTab = Instance.new("TextButton")
BossesTab.FontFace = Font
BossesTab.Text = "Bosses"
BossesTab.TextColor3 = TextColor
BossesTab.TextScaled = true
BossesTab.BackgroundColor3 = SecondaryColor
BossesTab.BorderColor3 = Color3.fromRGB(50, 50, 50)
BossesTab.BorderMode = Enum.BorderMode.Inset
BossesTab.Size = UDim2.fromScale(0.5, 0.051)
BossesTab.Parent = Mainframe

local BossesTabPadding = Instance.new("UIPadding")
BossesTabPadding.PaddingBottom = UDim.new(0.0622, 0)
BossesTabPadding.PaddingLeft = UDim.new(0.32, 0)
BossesTabPadding.PaddingRight = UDim.new(0.32, 0)
BossesTabPadding.PaddingTop = UDim.new(0.0622, 0)
BossesTabPadding.Parent = BossesTab

local DropsTab = Instance.new("TextButton")
DropsTab.FontFace = Font
DropsTab.Text = "Drops"
DropsTab.TextColor3 = TextColor
DropsTab.TextScaled = true
DropsTab.AnchorPoint = Vector2.new(1, 0)
DropsTab.BackgroundColor3 = SecondaryColor
DropsTab.BorderColor3 = Color3.fromRGB(50, 50, 50)
DropsTab.BorderMode = Enum.BorderMode.Inset
DropsTab.BorderSizePixel = 0
DropsTab.Position = UDim2.fromScale(1, 0)
DropsTab.Size = UDim2.fromScale(0.5, 0.051)
DropsTab.Parent = Mainframe

local DropsTabPadding = Instance.new("UIPadding")
DropsTabPadding.PaddingBottom = UDim.new(0.0622, 0)
DropsTabPadding.PaddingLeft = UDim.new(0.342, 0)
DropsTabPadding.PaddingRight = UDim.new(0.342, 0)
DropsTabPadding.PaddingTop = UDim.new(0.0622, 0)
DropsTabPadding.Parent = DropsTab

local Bosses = Instance.new("Folder")
Bosses.Parent = Mainframe

local BossHolder = Instance.new("ScrollingFrame")
BossHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
--BossHolder.CanvasSize = UDim2.fromScale(0, 1)
BossHolder.ScrollBarThickness = 0
BossHolder.BackgroundColor3 = SecondaryColor
BossHolder.BorderSizePixel = 0
BossHolder.Position = UDim2.fromScale(0, 0.051)
BossHolder.Size = UDim2.fromScale(1, 0.853)
BossHolder.Visible = true
BossHolder.Parent = Bosses

local BossHolderListLayout = Instance.new("UIListLayout")
BossHolderListLayout.Parent = BossHolder

local BossHolderPadding = Instance.new("UIPadding")
BossHolderPadding.PaddingBottom = UDim.new(0, 1)
BossHolderPadding.PaddingLeft = UDim.new(0, 1)
BossHolderPadding.PaddingRight = UDim.new(0, 1)
BossHolderPadding.PaddingTop = UDim.new(0, 1)
BossHolderPadding.Parent = BossHolder

local UseEquipped = Instance.new("TextButton")
UseEquipped.FontFace = Font
UseEquipped.Text = "Use Equipped"
UseEquipped.TextColor3 = TextColor
UseEquipped.TextScaled = true
UseEquipped.AnchorPoint = Vector2.new(0, 1)
UseEquipped.BackgroundColor3 = SecondaryColor
UseEquipped.BorderSizePixel = 0
UseEquipped.Position = UDim2.fromScale(0, 1)
UseEquipped.Size = UDim2.fromScale(1, 0.076)
UseEquipped.Visible = true
UseEquipped.Parent = Bosses

local UseEquippedPadding = Instance.new("UIPadding")
UseEquippedPadding.PaddingBottom = UDim.new(0.15, 0)
UseEquippedPadding.PaddingLeft = UDim.new(0.2, 0)
UseEquippedPadding.PaddingRight = UDim.new(0.2, 0)
UseEquippedPadding.PaddingTop = UDim.new(0.15, 0)
UseEquippedPadding.Parent = UseEquipped

local Drops = Instance.new("Folder")
Drops.Parent = Mainframe

local DropsHolder = Instance.new("ScrollingFrame")
DropsHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
--DropsHolder.CanvasSize = UDim2.fromScale(0, 1)
DropsHolder.ScrollBarThickness = 0
DropsHolder.BackgroundColor3 = SecondaryColor
DropsHolder.BorderSizePixel = 0
DropsHolder.Position = UDim2.fromScale(0, 0.051)
DropsHolder.Size = UDim2.fromScale(1, 0.853)
DropsHolder.Visible = false
DropsHolder.Parent = Drops

local DropsHolderListLayout = Instance.new("UIListLayout")
DropsHolderListLayout.Parent = DropsHolder

local DropsHolderPadding = Instance.new("UIPadding")
DropsHolderPadding.PaddingBottom = UDim.new(0, 1)
DropsHolderPadding.PaddingLeft = UDim.new(0, 1)
DropsHolderPadding.PaddingRight = UDim.new(0, 1)
DropsHolderPadding.PaddingTop = UDim.new(0, 1)
DropsHolderPadding.Parent = DropsHolder

local PickUpOne = Instance.new("TextButton")
PickUpOne.FontFace = Font
PickUpOne.Text = "Pick Up"
PickUpOne.TextColor3 = TextColor
PickUpOne.TextScaled = true
PickUpOne.AnchorPoint = Vector2.new(1, 1)
PickUpOne.BackgroundColor3 = SecondaryColor
PickUpOne.BorderSizePixel = 0
PickUpOne.Position = UDim2.fromScale(1, 1)
PickUpOne.Size = UDim2.new(0.5, -4, 0.076, 0)
PickUpOne.Visible = false
PickUpOne.Parent = Drops

local PickUpOnePadding = Instance.new("UIPadding")
PickUpOnePadding.PaddingBottom = UDim.new(0.176, 0)
PickUpOnePadding.PaddingLeft = UDim.new(0.292, 0)
PickUpOnePadding.PaddingRight = UDim.new(0.292, 0)
PickUpOnePadding.PaddingTop = UDim.new(0.176, 0)
PickUpOnePadding.Parent = PickUpOne

local PickUpAll = Instance.new("TextButton")
PickUpAll.FontFace = Font
PickUpAll.Text = "Pick Up All"
PickUpAll.TextColor3 = TextColor
PickUpAll.TextScaled = true
PickUpAll.AnchorPoint = Vector2.new(0, 1)
PickUpAll.BackgroundColor3 = SecondaryColor
PickUpAll.BorderSizePixel = 0
PickUpAll.Position = UDim2.fromScale(0, 1)
PickUpAll.Size = UDim2.new(0.5, -4, 0.076, 0)
PickUpAll.Visible = false
PickUpAll.Parent = Drops

local PickUpAllPadding = Instance.new("UIPadding")
PickUpAllPadding.PaddingBottom = UDim.new(0.176, 0)
PickUpAllPadding.PaddingLeft = UDim.new(0.204, 0)
PickUpAllPadding.PaddingRight = UDim.new(0.204, 0)
PickUpAllPadding.PaddingTop = UDim.new(0.176, 0)
PickUpAllPadding.Parent = PickUpAll

Entities.Parent = game:GetService("CoreGui")

Close.MouseButton1Click:Connect(function()
	Entities:Destroy()
end)

--// Functions \\--
DropsTab.MouseButton1Click:Connect(function()
	BossHolder.Visible = false
	UseEquipped.Visible = false

	DropsHolder.Visible = true
	PickUpAll.Visible = true
	PickUpOne.Visible = true
	
	BossesTab.BorderSizePixel = 0
	DropsTab.BorderSizePixel = 1
end)

BossesTab.MouseButton1Click:Connect(function()
	BossHolder.Visible = true
	UseEquipped.Visible = true

	DropsHolder.Visible = false
	PickUpAll.Visible = false
	PickUpOne.Visible = false

	BossesTab.BorderSizePixel = 1
	DropsTab.BorderSizePixel = 0
end)

local function selectBoss(instance)
	if instance then
		selectedBoss = instance
		for _,v in pairs(BossHolder:GetChildren()) do
			if v:IsA("TextButton") then
				if v.Text == instance.Name then
					v.BorderColor3 = Color3.new(1,0,0)
				else
					v.BorderColor3 = SecondaryColor
				end
			end
		end
	else
		selectedBoss = nil
		for _,v in pairs(BossHolder:GetChildren()) do
			if v:IsA("TextButton") then
				v.BorderColor3 = SecondaryColor
			end
		end
	end
end

local function selectDrop(instance)
	if instance then
		print(instance)
		selectedDrop = instance
		for _,v in pairs(DropsHolder:GetChildren()) do
			if v:IsA("TextButton") then
				if v.Text == instance.Touched.textgui.text.Text then
					v.BorderColor3 = Color3.new(1,0,0)
				else
					v.BorderColor3 = SecondaryColor
				end
			end
		end
	else
		selectedDrop = nil
		for _,v in pairs(DropsHolder:GetChildren()) do
			if v:IsA("TextButton") then
				v.BorderColor3 = SecondaryColor
			end
		end
	end
end

local function addBoss(name, instance)
	local Name = Instance.new("TextButton")
	Name.FontFace = Font
	Name.Text = name
	Name.TextColor3 = TextColor
	Name.TextScaled = true
	Name.BackgroundColor3 = MainColor
	Name.BorderColor3 = SecondaryColor
	Name.BorderMode = Enum.BorderMode.Inset
	Name.Size = UDim2.new(1, 0, 0.087, 0)
	Name.Parent = BossHolder

	local Padding = Instance.new("UIPadding")
	Padding.PaddingBottom = UDim.new(0.15, 0)
	Padding.PaddingLeft = UDim.new(0, 0)
	Padding.PaddingRight = UDim.new(0, 0)
	Padding.PaddingTop = UDim.new(0.15, 0)
	Padding.Parent = Name

	Name.MouseButton1Click:Connect(function()
		if selectedBoss == instance then
			selectBoss(nil)
		else
			selectBoss(instance)
		end
	end)
end

local function addDrop(name, instance)
	if name == "Gold" then return end
	local Name = Instance.new("TextButton")
	Name.FontFace = Font
	Name.Text = name
	Name.TextColor3 = TextColor
	Name.TextScaled = true
	Name.BackgroundColor3 = MainColor
	Name.BorderColor3 = SecondaryColor
	Name.BorderMode = Enum.BorderMode.Inset
	Name.Size = UDim2.new(1, 0, 0.087, 0)
	Name.Parent = DropsHolder

	local Padding = Instance.new("UIPadding")
	Padding.PaddingBottom = UDim.new(0.15, 0)
	Padding.PaddingLeft = UDim.new(0, 0)
	Padding.PaddingRight = UDim.new(0, 0)
	Padding.PaddingTop = UDim.new(0.15, 0)
	Padding.Parent = Name

	Name.MouseButton1Click:Connect(function()
		if selectedBoss == instance then
			selectDrop(nil)
		else
			selectDrop(instance)
		end
	end)
end

local function removeBosses()
	for _,v in pairs(BossHolder:GetChildren()) do
		if v:IsA("TextButton") then
			v:Destroy()
		end
	end
end

local function removeDrops()
	for _,v in pairs(DropsHolder:GetChildren()) do
		if v:IsA("TextButton") then
			v:Destroy()
		end
	end
end

local function listBosses()
	task.wait()
	local bossCount = {}

	for _, v in pairs(mobsFolder:GetChildren()) do
		if v:FindFirstChild("Boss") and v.Boss.Value == true then
			bossCount[v.Name] = v
		end
	end

	removeBosses()
	for i, v in pairs(bossCount) do
		addBoss(i, v)
	end
end

local function listDrops()
	task.wait()

	local DropCount = {}

	for _, item in ipairs(dropsFolder:GetChildren()) do
		if item:FindFirstChild("Touched") then
			local itemName = item.Touched.textgui.text.Text
			if DropCount[itemName] then
				DropCount[itemName .. " x" .. DropCount[itemName].count] = nil
				DropCount[itemName].count = DropCount[itemName].count + 1
			else
				DropCount[itemName] = {count = 1, instance = item}
			end
		end
	end

	local newDropCount = {}
	for itemName, itemData in pairs(DropCount) do
		if itemData.count > 1 then
			newDropCount[itemName .. " x" .. itemData.count] = itemData.instance
		else
			newDropCount[itemName] = itemData.instance
		end
	end

	DropCount = newDropCount

	removeDrops()
	for i, v in pairs(DropCount) do
		addDrop(i, v)
	end
end

--// Drag \\--
local dragging = false
local dragStart
local startPos

Mainframe.MouseButton1Down:Connect(function()
	dragging = true
	dragStart = UserInputService:GetMouseLocation()
	startPos = Mainframe.Position
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = UserInputService:GetMouseLocation() - dragStart
		Mainframe.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

--// Logic \\--
listBosses()
listDrops()
mobsFolder.ChildAdded:Connect(listBosses)
mobsFolder.ChildRemoved:Connect(listBosses)
dropsFolder.ChildAdded:Connect(listDrops)
dropsFolder.ChildRemoved:Connect(listDrops)

UseEquipped.MouseButton1Click:Connect(function()
	if selectedBoss and player.Character:FindFirstChildOfClass("Tool") then
		local Tool = player.Character:FindFirstChildOfClass("Tool")
		local Actions = {"Create", "Punch", "Shoot", "Activate", "Throw", "Charge"}

		for _, action in ipairs(Actions) do
			if Tool:FindFirstChildOfClass("Script"):FindFirstChild(action) then
				Tool:FindFirstChildOfClass("Script")[action]:FireServer(selectedBoss.HumanoidRootPart.Position)
			end
		end
	end
end)

PickUpOne.MouseButton1Click:Connect(function()
	if selectedDrop then
		if selectedDrop.Touched.textgui.text.Text == "Gold" then return end
		local item = string.gsub(selectedDrop.Touched.textgui.text.Text, " ", "")
		local amount = selectedDrop.DropAmount.Value

		game:GetService("ReplicatedStorage").Remotes.ObtainDrop:FireServer(item, amount)
		selectedDrop:Destroy()
	end
end)

PickUpAll.MouseButton1Click:Connect(function()
	for _,v in pairs(workspace.Drops:GetChildren()) do
		if v:FindFirstChild("Touched") then
			local name = v.Touched.textgui.text.Text
			if name == "Gold" then else
				local item = string.gsub(v.Touched.textgui.text.Text, " ", "")
				local amount = v.DropAmount.Value

				game:GetService("ReplicatedStorage").Remotes.ObtainDrop:FireServer(item, amount)
				v:Destroy()
			end
		end
	end
end)
