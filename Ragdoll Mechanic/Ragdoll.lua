x = game.Players.LocalPlayer
local stateType = Enum.HumanoidStateType
script.Parent.MouseButton1Click:connect(function()
	x.Character.Humanoid:SetStateEnabled(stateType.GettingUp, true)
	x.Character.Humanoid:ChangeState(stateType.GettingUp)
	local UTJoint = x.Character:FindFirstChild("UpperTorso")
		local LTJoint = x.Character:FindFirstChild("LowerTorso")
		local RUA = x.Character:FindFirstChild("RightUpperArm")
		local LUA = x.Character:FindFirstChild("LeftUpperArm")
		local RUL = x.Character:FindFirstChild("RightUpperLeg")
		local LUL = x.Character:FindFirstChild("LeftUpperLeg")
		local RLA = x.Character:FindFirstChild("RightLowerArm")
		local LLA = x.Character:FindFirstChild("LeftLowerArm")
		local RLL = x.Character:FindFirstChild("RightLowerLeg")
		local LLL = x.Character:FindFirstChild("LeftLowerLeg")
		local RH = x.Character:FindFirstChild("RightHand")
		local LH = x.Character:FindFirstChild("LeftHand")
		local RF = x.Character:FindFirstChild("RightFoot")
		local LF = x.Character:FindFirstChild("LeftFoot")
		local HRP = x.Character:FindFirstChild("HumanoidRootPart")
	    local Torso x.Character.UpperTorso.Waist.Part0 = LTJoint
        local Torso2 x.Character.UpperTorso.Waist.Part1 = UTJoint
        local LUAJoint x.Character.RightUpperArm.RightShoulder.Part0 = UTJoint
        local LUAJoint2 x.Character.RightUpperArm.RightShoulder.Part1 = RUA
        local LUAJoint x.Character.LeftUpperArm.LeftShoulder.Part0 = UTJoint
        local LUAJoint2 x.Character.LeftUpperArm.LeftShoulder.Part1 = LUA
        local RULJoint x.Character.RightUpperLeg.RightHip.Part0 = LTJoint
        local RULJoint2 x.Character.RightUpperLeg.RightHip.Part1 = RUL
        local LULJoint x.Character.LeftUpperLeg.LeftHip.Part0 = LTJoint
        local LULJoint2 x.Character.LeftUpperLeg.LeftHip.Part1 = LUL
        local RLAJoint x.Character.RightLowerArm.RightElbow.Part0 = RUA
        local RLAJoint2 x.Character.RightLowerArm.RightElbow.Part1 = RLA
        local LLAJoint x.Character.LeftLowerArm.LeftElbow.Part0 = LUA
        local LLAJoint2 x.Character.LeftLowerArm.LeftElbow.Part1 = LLA
        local RLLJoint x.Character.RightLowerLeg.RightKnee.Part0 = RUL
        local RLLJoint2 x.Character.RightLowerLeg.RightKnee.Part1 = RLL
        local LLLJoint x.Character.LeftLowerLeg.LeftKnee.Part0 = LUL
        local LLLJoint2 x.Character.LeftLowerLeg.LeftKnee.Part1 = LLL
        local RHJoint x.Character.RightHand.RightWrist.Part0 = RLA
        local RHJoint2 x.Character.RightHand.RightWrist.Part1 = RH
        local LHJoint x.Character.LeftHand.LeftWrist.Part0 = LLA
        local LHJoint2 x.Character.LeftHand.LeftWrist.Part1 = LH
        local RFJoint x.Character.RightFoot.RightAnkle.Part0 = RLL
        local RFJoint2 x.Character.RightFoot.RightAnkle.Part1 = RF
        local LFJoint x.Character.LeftFoot.LeftAnkle.Part0 = LLL
        local LFJoint2 x.Character.LeftFoot.LeftAnkle.Part1 = LF
        x.Character.RagdollFallingMoreFromAlexRagdoll.Disabled = true
end)