b = script.Parent
b.Touched:connect(function(hit)
	local c = hit.Parent
	if c then
		for _,h in next, c:GetChildren() do
			if h:IsA'Humanoid' and h.Health > 0 and h:GetState().Name ~= 'Physics' then
				
				--if h.WalkSpeed > 22 then break end
				--^ ignore unless you're explode1.  ~mael
				
				local newscript = script.physics:Clone()
				newscript.Parent = c
				newscript.Disabled = false
				--h:ChangeState'Physics'
				
				wait(1)
				
				if h.Parent then
					local newscript = script.gettingup:Clone()
					newscript.Parent = c
					newscript.Disabled = false
					--h:ChangeState'GettingUp'
				end
				break
			end
		end
	end
end)