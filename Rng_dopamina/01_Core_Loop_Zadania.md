# 🔄 Zadania: Core Loop i Architektura Gry (RNG)

## 1. System Zapisu Danych
- [ ] 1.1 Inicjalizacja DataStore (np. ProfileService).
- [ ] 1.2 Zaprojektowanie struktury zapisu:
  - [ ] `Coins` (Zarabiane z rolli).
  - [ ] `TotalRolls` (Licznik statystyczny, np. 50,000 wykonanych losowań).
  - [ ] `BestAura` (Zapis najlepszego posiadanego tytułu, by pokazywać go w Leaderstats).
  - [ ] `Inventory` (Tabela ID zebranych aur z ograniczeniem ilościowym).

## 2. Architektura Drzewka Ulepszeń
- [ ] 2.1 Zapis w DataStore: `Upgrades = { LuckLevel = 1, SpeedLevel = 1 }`.
- [ ] 2.2 System kosztów (Cennik rosnący matematycznie: np. $Koszt = Baza \times 1.5^{Poziom}$).
- [ ] 2.3 Skrypt autoryzujący zakup – odjęcie monet, dodanie poziomu, odpowiedź serwera o sukcesie operacji.

## 3. System AFK i Auto-Roll
- [ ] 3.1 Pętla na Kliencie (LocalScript):
  - [ ] Odpalana po kliknięciu "Auto-Roll".
  - [ ] Wywoływanie `RemoteEvent` "RequestRoll" w stałych odstępach (np. co 3 sekundy).
- [ ] 3.2 Weryfikacja Tickrate na Serwerze:
  - [ ] Słownik mapujący `Player -> OstatniCzasRolla`.
  - [ ] Zabezpieczenie: jeśli nowa prośba o roll przyszła przed upływem bazowego Cooldownu gracza, zignoruj (ochrona przed spamerami / auto-clickerami).

## 4. Leaderboard (Globalny Flex)
- [ ] Zbudowanie tablic globalnych w Lobby wyświetlających graczy z największą ilością losowań lub statusem najrzadszej aury.