# this script instant kills players if it touch a certain blocks. 

local respawnLocation = CFrame.new(Vector3.new(0, 5, 0)) -- Set the respawn location here

local function onTouched(hit)
	local character = hit.Parent
	local player = game.Players:GetPlayerFromCharacter(character)

	if player then
		-- The hit object belongs to a player's character
		local humanoid = character:FindFirstChild("Humanoid")

		if humanoid then
			-- The character has a humanoid
			humanoid.Health = 0 -- Set the player's health to 0 to trigger automatic respawn

			-- Teleport the player back to the respawn location
			character:SetPrimaryPartCFrame(respawnLocation)

			-- Optionally, you can add a delay before the player respawns to prevent instant respawning
			wait(0) -- Adjust the delay as needed
			humanoid.Health = humanoid.MaxHealth
		end
	end
end

script.Parent.Touched:Connect(onTouched)