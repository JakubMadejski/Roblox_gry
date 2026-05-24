# ⚙️ Zadania: Mechaniki i Skrypty (Luau)

## 1. System Konsumpcji i Jedzenia
- [ ] 1.1 Tabela Wartości Odżywczych (ModuleScript):
  - [ ] Utworzenie słownika mapującego nazwę jedzenia na parametry (np. `Burger = {Energy = +50, Fat = +10}`).
- [ ] 1.2 Skrypt Narzędzia (Tool):
  - [ ] Podpięcie zdarzenia `.Activated` pod jedzenie.
  - [ ] Odtwarzanie animacji (AnimationTrack) przygryzania.
  - [ ] Odpalenie `RemoteEvent`, aby serwer zaktualizował statystyki `Energy` i `FatPercent`.

## 2. Maszyny Treningowe (Siłownia)
- [ ] 2.1 Logika Interakcji:
  - [ ] Umieszczenie `ProximityPrompt` przy maszynach.
  - [ ] Utworzenie blokady – jeśli maszyna jest zajęta, ukryj prompt dla innych.
- [ ] 2.2 Skrypt Treningu Siłowego (np. Hantle):
  - [ ] Sprawdzenie w pętli czy `Energy > 0`.
  - [ ] Odejmowanie Energii co sekundę i dodawanie `Muscle`.
  - [ ] Przerywanie ćwiczenia, gdy zabraknie energii.
- [ ] 2.3 Skrypt Treningu Cardio (np. Bieżnia):
  - [ ] Aplikacja wzoru matematycznego: `Czas * Mnoznik_Maszyny`.
  - [ ] Odejmowanie `FatPercent` (bez możliwości zejścia poniżej zera).

## 3. System Pompy i Zawody
- [ ] 3.1 Mechanika Pompy Mięśniowej:
  - [ ] Utworzenie zmiennej tymczasowej `PumpValue`.
  - [ ] Pętla serwerowa (lub Heartbeat) zmniejszająca `PumpValue` o 1 co X sekund.
- [ ] 3.2 System Oceniania Zawodów:
  - [ ] Implementacja wzoru: `(Muscle / 100) - (FatPercent * Kara)`.
  - [ ] Skrypt sortujący graczy na scenie (tabela wyników, `table.sort`).
  - [ ] Rozdanie Monet trzem najlepszym graczom.