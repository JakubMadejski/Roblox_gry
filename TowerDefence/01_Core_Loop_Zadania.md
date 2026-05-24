# 🔄 Zadania: Core Loop i Architektura Gry

## 1. System Zapisu Danych (ProfileService)
- [ ] 1.1 Inicjalizacja skryptu serwerowego do zapisu danych gracza.
- [ ] 1.2 Struktura tabeli gracza:
  - [ ] `Credits` (Waluta podstawowa, do ulepszeń).
  - [ ] `CodeFragments` (Waluta premium / rzadka gacha).
  - [ ] `Inventory` (Tabela przetrzymująca posiadane wieże).
  - [ ] `EquippedTowers` (Tabela z max. 5 slotami wybranymi do gry).

## 2. Menedżer Fal i Rozgrywki (Wave System)
- [ ] 2.1 Skrypt Menedżera Mapy:
  - [ ] Folder z falami `WavesConfig` (np. Fala 1 = 10x Basic Virus, Fala 2 = 15x Basic, 2x Tank).
  - [ ] Pętla odpalająca falę, oczekująca na jej koniec (śledzenie liczby żywych przeciwników w folderze `Workspace.Enemies`).
  - [ ] Zmienna `BaseHealth` (Życie Rdzenia) i system jej pomniejszania, gdy wróg dotrze do mety.
- [ ] 2.2 System Nagród: Zakończenie fali/meczu i przyznanie waluty w zależności od wyniku (Wygrana / Przegrana / Numer fali).

## 3. System Gacha (Lobby / Summons)
- [ ] 3.1 Skrypt Losowania:
  - [ ] Moduł prawdopodobieństwa (np. 70% Common, 25% Rare, 4% Epic, 1% Mythic).
  - [ ] Użycie `math.random(1, 100)` do wyłonienia rzadkości, a następnie losowanie wieży z tej puli.
- [ ] 3.2 UI Losowania (Gacha Screen):
  - [ ] Animacja "rozkodowywania" w interfejsie 2D przy losowaniu.
  - [ ] Zapis wylosowanej wieży do `Inventory` w DataStore gracza.

## 4. Teleportacja i Lobby
- [ ] 4.1 Strefa Lobby: Ekran startowy i fizyczny obszar (platformy do wejścia do różnych map).
- [ ] 4.2 System Teleportacji: Skrypt `TeleportService` przenoszący graczy z wind do prywatnych/publicznych serwerów gry (meczów).