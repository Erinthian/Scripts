-- Variables:
local currentNote = 0
local notes = {}
local authors = {}
local filtered = true
local tab = 0 --1 is Pinnned, 2 is Held

-- Services:
local UserInputService = game:GetService("UserInputService")

-- Instances:a

local NoteViewer = Instance.new("ScreenGui")
local Mainframe = Instance.new("Frame")
local Note = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Filtered = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local PinnnedTab = Instance.new("TextButton")
local HeldTab = Instance.new("TextButton")
local NoteCount = Instance.new("TextLabel")
local Author = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local Left = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Right = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local HeldBy = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local PinnedBy = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")

--Properties:

NoteViewer.Name = "NoteViewer"
NoteViewer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
NoteViewer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling	

Mainframe.Name = "Mainframe"
Mainframe.Parent = NoteViewer
Mainframe.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Mainframe.Position = UDim2.new(0.502617776, 0, 0.219369888, 0)
Mainframe.Size = UDim2.new(0, 300, 0, 450)

Close.Name = "Close"
Close.Parent = Mainframe
Close.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.933333337, 0, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000

PinnnedTab.Name = "PinnnedTab"
PinnnedTab.Parent = Mainframe
PinnnedTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PinnnedTab.BorderColor3 = Color3.fromRGB(50, 50, 50)
PinnnedTab.BorderSizePixel = 0
PinnnedTab.Size = UDim2.new(0, 140, 0, 20)
PinnnedTab.Font = Enum.Font.SourceSansBold
PinnnedTab.Text = "Pinnned"
PinnnedTab.TextColor3 = Color3.fromRGB(255, 255, 255)
PinnnedTab.TextSize = 15.000

HeldTab.Name = "HeldTab"
HeldTab.Parent = Mainframe
HeldTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HeldTab.BorderColor3 = Color3.fromRGB(50, 50, 50)
HeldTab.BorderSizePixel = 0
HeldTab.Position = UDim2.new(0.466666669, 0, 0, 0)
HeldTab.Size = UDim2.new(0, 140, 0, 20)
HeldTab.Font = Enum.Font.SourceSansBold
HeldTab.Text = "Held"
HeldTab.TextColor3 = Color3.fromRGB(255, 255, 255)
HeldTab.TextSize = 15.000

Note.Name = "Note"
Note.Parent = Mainframe
Note.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Note.BorderColor3 = Color3.fromRGB(0, 0, 0)
Note.Position = UDim2.new(0.0333333351, 0, 0.0666666701, 0)
Note.Size = UDim2.new(0, 280, 0, 340)
Note.Font = Enum.Font.SourceSansBold
Note.Text = ""
Note.TextColor3 = Color3.fromRGB(200, 200, 200)
Note.TextSize = 16.000
Note.TextWrapped = true

UICorner.Parent = Note

NoteCount.Name = "NoteCount"
NoteCount.Parent = Mainframe
NoteCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoteCount.BackgroundTransparency = 1.000
NoteCount.Position = UDim2.new(0.0333333351, 0, 0.0666666701, 0)
NoteCount.Size = UDim2.new(0, 280, 0, 15)
NoteCount.Font = Enum.Font.SourceSansBold
NoteCount.Text = "0/0"
NoteCount.TextColor3 = Color3.fromRGB(255, 255, 255)
NoteCount.TextSize = 15.000

Filtered.Name = "Filtered"
Filtered.Parent = Mainframe
Filtered.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Filtered.BackgroundTransparency = 1.000
Filtered.BorderSizePixel = 0
Filtered.Position = UDim2.new(0.899999976, 0, 0.0666666701, 0)
Filtered.Size = UDim2.new(0, 20, 0, 20)
Filtered.Font = Enum.Font.SourceSansBold
Filtered.Text = "#"
Filtered.TextColor3 = Color3.fromRGB(0, 255, 0)
Filtered.TextSize = 20.000

Author.Name = "Author"
Author.Parent = Mainframe
Author.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Author.BorderColor3 = Color3.fromRGB(0, 0, 0)
Author.Position = UDim2.new(0.0333333351, 0, 0.846666634, 0)
Author.Size = UDim2.new(0, 280, 0, 19)
Author.Font = Enum.Font.SourceSans
Author.Text = ""
Author.TextColor3 = Color3.fromRGB(200, 200, 200)
Author.TextSize = 16.000

UICorner_2.Parent = Author

UICorner_3.Parent = Mainframe

Left.Name = "Left"
Left.Parent = Mainframe
Left.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Left.Position = UDim2.new(0.0333333351, 0, 0.911111116, 0)
Left.Size = UDim2.new(0, 30, 0, 30)
Left.Font = Enum.Font.SourceSansBold
Left.Text = "<"
Left.TextColor3 = Color3.fromRGB(200, 200, 200)
Left.TextSize = 30.000
Left.TextStrokeColor3 = Color3.fromRGB(200, 200, 200)

UICorner_4.Parent = Left

Right.Name = "Right"
Right.Parent = Mainframe
Right.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Right.Position = UDim2.new(0.866666675, 0, 0.911111116, 0)
Right.Size = UDim2.new(0, 30, 0, 30)
Right.Font = Enum.Font.SourceSansBold
Right.Text = ">"
Right.TextColor3 = Color3.fromRGB(200, 200, 200)
Right.TextSize = 30.000
Right.TextStrokeColor3 = Color3.fromRGB(200, 200, 200)

UICorner_5.Parent = Right

HeldBy.Name = "HeldBy"
HeldBy.Parent = Mainframe
HeldBy.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HeldBy.BorderSizePixel = 0
HeldBy.Position = UDim2.new(0.166641846, 0, 0.946911514, 0)
HeldBy.Size = UDim2.new(0, 200, 0, 13)
HeldBy.Font = Enum.Font.SourceSansBold
HeldBy.Text = "Held By: Unavailable"
HeldBy.TextColor3 = Color3.fromRGB(255, 255, 255)
HeldBy.TextSize = 12.000

UICorner.Parent = HeldBy

PinnedBy.Name = "Pinned By"
PinnedBy.Parent = Mainframe
PinnedBy.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PinnedBy.BorderSizePixel = 0
PinnedBy.Position = UDim2.new(0, 50, 0, 410)
PinnedBy.Size = UDim2.new(0, 200, 0, 13)
PinnedBy.Font = Enum.Font.SourceSansBold
PinnedBy.Text = "Pinned By: Unavailable"
PinnedBy.TextColor3 = Color3.fromRGB(255, 255, 255)
PinnedBy.TextSize = 12.000

UICorner_2.Parent = PinnedBy

-- Scripts:

Note.Text = "Thanks for using NoteViewer!"

PinnnedTab.MouseButton1Click:Connect(function()
	notes = game:GetService("Workspace").BulletinBoards.Notes:GetChildren()
	currentNote = 0
	NoteCount.Text = currentNote.."/"..#notes
	tab = 1
	Note.Text = "Switched to pinned tab"
	Author.Text = ""
	HeldBy.Text = "Held By: Unavailable"
end)

HeldTab.MouseButton1Click:Connect(function()
	notes = {}
	for i,v in pairs(game:GetService("Players"):GetDescendants()) do
		if v.Name == "Note" and v.ClassName == "Tool" then
			table.insert(notes, v.FilteredMessage.Value)
		end
	end

	for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if v:IsA("Tool") and v.Parent:IsA("Model") and v.Name == "Note" then
			table.insert(notes, v.FilteredMessage.Value)
		end
	end

	currentNote = 0
	NoteCount.Text = currentNote.."/"..#notes
	tab = 2
	Note.Text = "Switched to held tab"
	Author.Text = ""
	PinnedBy.Text = "Pinned By: Unavailable"
end)

Filtered.MouseButton1Click:Connect(function()
	filtered = not filtered
	if filtered then
		Filtered.TextColor3 = Color3.new(0,1,0)
		if tab == 1 then
			Note.Text = notes[currentNote].SurfaceGui.TextLabel.Text
		elseif tab == 2 then
			Note.Text = notes[currentNote]
		end
	else
		Filtered.TextColor3 = Color3.new(1,0,0)
		if tab == 1 then
			Note.Text = notes[currentNote].Message.Value
		elseif tab == 2 then
			Note.Text = unfiltered[currentNote]
		end
	end
end)

Right.MouseButton1Click:Connect(function()
	if tab == 1 then
		notes = game:GetService("Workspace").BulletinBoards.Notes:GetChildren()
		currentNote = currentNote + 1

		if currentNote > #notes then
			currentNote = 1
		end

		if currentNote < 1 then
			currentNote = #notes
		end

		NoteCount.Text = currentNote.."/"..#notes

		if filtered then
			Note.Text = notes[currentNote].SurfaceGui.TextLabel.Text
		else
			Note.Text = notes[currentNote].Message.Value
		end
		
		Author.Text = notes[currentNote].SurfaceGui.Signature.Text
		PinnedBy.Text = "Pinned By: "..game:GetService("Players"):GetNameFromUserIdAsync(notes[currentNote].PinnedBy.Value)
	elseif tab == 2 then
		notes = {}
		authors = {}
		heldBy = {}
		unfiltered = {}
		for i,v in pairs(game:GetService("Players"):GetDescendants()) do
			if v.Name == "Note" and v.ClassName == "Tool" then
				table.insert(notes, v.FilteredMessage.Value)
				table.insert(authors, v.Signature.Value)
				table.insert(heldBy, v.Parent.Parent.DisplayName)
				table.insert(unfiltered, v.Message.Value)
			end
		end

		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v:IsA("Tool") and v.Parent:IsA("Model") and v.Name == "Note" then
				table.insert(notes, v.FilteredMessage.Value)
			end
		end

		currentNote = currentNote + 1

		if currentNote > #notes then
			currentNote = 1
		end

		if currentNote < 1 then
			currentNote = #notes
		end

		NoteCount.Text = currentNote.."/"..#notes

		if filtered then
			Note.Text = notes[currentNote]
		else
			Note.Text = unfiltered[currentNote]
		end

		Author.Text = authors[currentNote]
		HeldBy.Text = "Held By: "..heldBy[currentNote]
	end
end)

Left.MouseButton1Click:Connect(function()
	if tab == 1 then
		notes = game:GetService("Workspace").BulletinBoards.Notes:GetChildren()
		currentNote = currentNote - 1

		if currentNote > #notes then
			currentNote = 1
		end

		if currentNote < 1 then
			currentNote = #notes
		end

		NoteCount.Text = currentNote.."/"..#notes

		if filtered then
			Note.Text = notes[currentNote].SurfaceGui.TextLabel.Text
		else
			Note.Text = notes[currentNote].Message.Value
		end
		
		Author.Text = notes[currentNote].SurfaceGui.Signature.Text
		PinnedBy.Text = "Pinned By: "..game:GetService("Players"):GetNameFromUserIdAsync(notes[currentNote].PinnedBy.Value)
	elseif tab == 2 then
		notes = {}
		authors = {}
		heldBy = {}
		unfiltered = {}
		for i,v in pairs(game:GetService("Players"):GetDescendants()) do
			if v.Name == "Note" and v.ClassName == "Tool" then
				table.insert(notes, v.FilteredMessage.Value)
				table.insert(authors, v.Signature.Value)
				table.insert(heldBy, v.Parent.Parent.DisplayName)
				table.insert(unfiltered, v.Message.Value)
			end
		end

		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v:IsA("Tool") and v.Parent:IsA("Model") and v.Name == "Note" then
				table.insert(notes, v.FilteredMessage.Value)
			end
		end

		currentNote = currentNote - 1

		if currentNote > #notes then
			currentNote = 1
		end

		if currentNote < 1 then
			currentNote = #notes
		end

		NoteCount.Text = currentNote.."/"..#notes

		if filtered then
			Note.Text = notes[currentNote]
		else
			Note.Text = unfiltered[currentNote]
		end

		Author.Text = authors[currentNote]
		HeldBy.Text = "Held By: "..heldBy[currentNote]
	end
end)

Close.MouseButton1Click:Connect(function()
	NoteViewer:Destroy()
end)

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	Mainframe.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Mainframe.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Mainframe.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Mainframe.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)