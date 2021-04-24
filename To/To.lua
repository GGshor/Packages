local module = {
	Name = "To",
	Description = "Teleport to a player",
	Location = "Player",
}

module.Execute = function(Client, Type, Attachment)
	if Type == "command" then
		local char = module.API.getCharacter(module.API.getPlayerWithName(Attachment))
		if char then
            if Client.Character:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("HumanoidRootPart") then
                if Client.Character.Humanoid.Sit then
                    Client.Character.Humanoid.Sit = false
                    Client.Character.Humanoid.Jump = true
                end
                wait()
			    Client.Character.HumanoidRootPart.CFrame = (char.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(90/1),0)*CFrame.new(5+.2*1,0,0))*CFrame.Angles(0,math.rad(90),0)
                return true
            else
			    return false
            end
		end
        return false
	end
end


return module