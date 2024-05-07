local Char = game:GetService("Players").LocalPlayer.Character

Char.ChildAdded:Connect(function(v)
	if v.Name == "Watch" then
		v.Screen.SurfaceGui.Frame.TIME.FontFace = Font.new("rbxassetid://12187360881")
		v.Screen.SurfaceGui.Frame.Info.FontFace = Font.new("rbxassetid://12187360881")
		if game:GetService("ReplicatedStorage").Night == true then
			v.Screen.SurfaceGui.Frame.Info.Text = "Until Dawn"
		else
			v.Screen.SurfaceGui.Frame.Info.Text = "Until Sundown"
		end
	end
end)