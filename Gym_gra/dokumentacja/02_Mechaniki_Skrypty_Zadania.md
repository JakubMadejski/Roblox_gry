# ⚙️ Zadania: Mechaniki i Skrypty (Luau)

## 1. System Konsumpcji i Jedzenia
- [ ] 1.1 Tabela Wartości Odżywczych (ModuleScript):
  - [ ] Utworzenie słownika mapującego nazwę jedzenia na parametry (np. `Burger = {Energy = +50, Fat = +10}`).
- [ ] 1.2 Skrypt Narzędzia (Tool):
  - [ ] Podpięcie zdarzenia `.Activated` pod jedzenie.
  - [ ] Odtwarzanie animacji (AnimationTrack) przygryzania.
  - [ ] Odpalenie `RemoteEvent`, aby serwer zaktualizował statystyki `Energy` i `FatPercent`.

## 1.3 Suplementy (Energetyki i Przedtreningówki)
- [ ] 1.3.1 Napoje Energetyczne:
  - [ ] Skrypt dla obiektu typu `Tool` odnawiający `Energy` o X punktów z jednoczesnym pozostawieniem `FatPercent` bez zmian.
- [ ] 1.3.2 Przedtreningówki (System Buffów):
  - [ ] Implementacja tymczasowego modyfikatora w statystykach gracza (np. `FatigueMultiplier = 0.5` na 2 minuty po wypiciu).

## 1.5 System Snu i Regeneracji
- [ ] 1.5.1 Strefa Relaksu / Łóżka:
  - [ ] Ustawienie obiektów łóżek w grze z podpiętym `ProximityPrompt`.
  - [ ] Pętla obniżająca statystykę `Fatigue` do 0 po interakcji z łóżkiem (wraz z przygaszeniem ekranu na czarno na 2-3 sekundy).

## 2. Maszyny Treningowe (Siłownia)
- [ ] 2.1 Logika Interakcji:
  - [ ] Umieszczenie `ProximityPrompt` przy maszynach.
  - [ ] Utworzenie blokady – jeśli maszyna jest zajęta, ukryj prompt dla innych.
- [ ] 2.2 Skrypt Treningu Siłowego (np. Hantle):
  - [ ] Sprawdzenie w pętli czy `Energy > 0` oraz `Fatigue < 100`.
  - [ ] Skrypt mnożnika masy: Jeśli gracz ma mało energii ("na redukcji") lub jest bardzo zmęczony, przyrost `Muscle` jest bardzo mały.
  - [ ] Dodawanie `Muscle`, odejmowanie Energii i jednoczesne powolne budowanie `Fatigue`.
  - [ ] Przerywanie ćwiczenia z powiadomieniem, gdy zabraknie energii lub postać "padnie" ze zmęczenia.
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