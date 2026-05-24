local Players = game:GetService("Players")

-- Domyślne wartości początkowe dla nowego gracza
local DEFAULT_STATS = {
	Energy = 100,    -- Max to 100, zużywana na trening
	Fatigue = 0,     -- Max to 100, rośnie podczas treningu
	Muscle = 10,     -- Bazowa masa mięśniowa
	FatPercent = 15, -- Procent tkanki tłuszczowej (np. 15%)
	Coins = 0        -- Waluta początkowa
}

local function onPlayerAdded(player)
	-- Folder leaderstats jest automatycznie rozpoznawany przez Roblox i wyświetla zmienne w prawym górnym rogu
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	-- Tworzymy statystyki (IntValues = liczby całkowite) i przypinamy do leaderstats
	local coins = Instance.new("IntValue")
	coins.Name = "Coins"
	coins.Value = DEFAULT_STATS.Coins
	coins.Parent = leaderstats

	local muscle = Instance.new("IntValue")
	muscle.Name = "Muscle"
	muscle.Value = DEFAULT_STATS.Muscle
	muscle.Parent = leaderstats

	local energy = Instance.new("IntValue")
	energy.Name = "Energy"
	energy.Value = DEFAULT_STATS.Energy
	energy.Parent = leaderstats

	local fatigue = Instance.new("IntValue")
	fatigue.Name = "Fatigue"
	fatigue.Value = DEFAULT_STATS.Fatigue
	fatigue.Parent = leaderstats

	local fatPercent = Instance.new("IntValue")
	fatPercent.Name = "Fat%"
	fatPercent.Value = DEFAULT_STATS.FatPercent
	fatPercent.Parent = leaderstats
end

Players.PlayerAdded:Connect(onPlayerAdded)

-- Ładuje statystyki dla graczy, którzy weszli do gry ułamek sekundy przed odpaleniem tego skryptu (częste w Studio)
for _, player in ipairs(Players:GetPlayers()) do
	onPlayerAdded(player)
end