local tool = script.Parent
local debounce = false

tool.Activated:Connect(function()
	if debounce then return end
	debounce = true

	local character = tool.Parent
	local player = game:GetService("Players"):GetPlayerFromCharacter(character)

	if player then
		local leaderstats = player:FindFirstChild("leaderstats")
		if leaderstats then
			local energy = leaderstats:FindFirstChild("Energy")
			local fat = leaderstats:FindFirstChild("Fat%")

			-- Burger daje potężny zastrzyk energii, ale tuczy
			energy.Value = math.min(100, energy.Value + 40)
			fat.Value = fat.Value + 3
		end
	end

	task.wait(1.5) -- Odstęp pomiędzy "kolejnymi gryzami" jedzenia
	debounce = false
end)