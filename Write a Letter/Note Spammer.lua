repeat wait(0.4)
	local ohString1 = "*Master keeps pulling out then lunging back in* \"Nya!!\" *A sticky squelching noise fills the room* \"Master im in a weird p-position..\" *Master lifts my leg up and starts licking the tailhole like a dog* \"Nyah!!!\" \"Master im only 11 this is b-bad\" *Master's balls are dangling over my head so i start licking* \"Nya!!\""
	local ohEnumItem2 = Enum.Font.PatrickHand
	local ohColor33 = Color3.new(0, 0, 0)

	game:GetService("ReplicatedStorage").COM.Game.RequestTakeNote:InvokeServer(ohString1, ohEnumItem2, ohColor33)

	game.Players.LocalPlayer.Character.Note.ClassEvent:FireServer("Drop")
until game.Players.LocalPlayer.Character.Humanoid.Health <= 0