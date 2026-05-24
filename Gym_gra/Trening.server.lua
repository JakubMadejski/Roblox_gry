local tool = script.Parent
local debounce = false -- Zabezpieczenie przed zbyt szybkim klikaniem (tzw. spamowaniem)

tool.Activated:Connect(function()
	if debounce then return end
	debounce = true

	local character = tool.Parent
	local player = game:GetService("Players"):GetPlayerFromCharacter(character)

	if player then
		local leaderstats = player:FindFirstChild("leaderstats")
		if leaderstats then
			local energy = leaderstats:FindFirstChild("Energy")
			local fatigue = leaderstats:FindFirstChild("Fatigue")
			local muscle = leaderstats:FindFirstChild("Muscle")

			-- Sprawdzamy czy gracz ma siłę ćwiczyć
			if energy.Value > 0 and fatigue.Value < 100 then
				energy.Value = math.max(0, energy.Value - 10)
				fatigue.Value = math.min(100, fatigue.Value + 5)

				-- Logika Mnożnika z GDD: mniejszy przyrost, jeśli brakuje energii lub jest duże zmęczenie
				local muscleGain = (energy.Value < 30 or fatigue.Value > 70) and 1 or 3
				
				muscle.Value = muscle.Value + muscleGain
			end
		end
	end

	task.wait(0.5) -- Przerwa pomiędzy kolejnymi "powtórzeniami"
	debounce = false
end)