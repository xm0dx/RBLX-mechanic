local delay = false
local module = require(game.ReplicatedStorage.RagdollFunctions)

script.Parent.Touched:Connect(function(hit)
	if delay == false then
		if hit.Parent then
			if hit.Parent:FindFirstChild("Humanoid") then
				delay = true
				local char = hit.Parent
				local player = game:GetService("Players"):GetPlayerFromCharacter(char)

				module.Ragdoll(char, player)

				wait(3) -- Change this to adjust how long the player remains in ragdoll mode.

				module.Stand(char, player, char.Humanoid)

				wait(2) -- Delay, you can remove this if you want.

				delay = false
			end
		end
	end
end)
