-- RagdollTrigger.lua
local RagdollSystem = require(game.ServerScriptService.RagdollSystem) -- Adjust the path accordingly

local trigger = script.Parent

trigger.Touched:Connect(function(hit)
	local pushedPlayer = game.Players:GetPlayerFromCharacter(hit.Parent)
	if pushedPlayer and pushedPlayer:IsA("Player") then
		RagdollSystem.EnableRagdoll(pushedPlayer)
		wait(1) -- Adjust the duration of ragdoll mode as needed
		RagdollSystem.DisableRagdoll(pushedPlayer)
	end
end)
