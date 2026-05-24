# 💰 Zadania: Monetyzacja (Robux)

## 1. System Szczęścia (Luck Boosts)
- [ ] 1.1 Stały Gamepass "VIP +20% Luck":
  - [ ] Weryfikacja na starcie gry i podczas zapytania z RollService (`UserOwnsGamePassAsync`).
- [ ] 1.2 Kupowalne Eliksiry / Potki:
  - [ ] Developer Product dodający stosowalny "Buff" podnoszący tymczasowo współczynnik Luck.
  - [ ] Tabela po stronie serwera śledząca czas trwania (np. *Gracz_A: Boost X2 na 30 minut*).
  - [ ] Wyświetlanie timera w GUI.

## 2. Udogodnienia QoL (Szybkość)
- [ ] 2.1 Gamepass "Instant Roll":
  - [ ] Eliminacja blokady Tickrate/Cooldownu dla graczy kupujących (lub znaczne pomniejszenie z 3 sekund na 0.5 sekundy).
  - [ ] Ominięcie długich animacji w GUI dla natychmiastowego efektu dropu.

## 3. Ekwipunek i Sloty
- [ ] 3.1 Sprzedaż dodatkowych miejsc (Inventory Expansion).
- [ ] 3.2 Skrypt DevProductu rozszerzający limit plecaka w zapisanym DataStore gracza.

## 4. Gacha Maszyna (Top Tier Slots)
- [ ] 4.1 Wydzielony moduł Rollów dedykowany wyłącznie pod walutę Premium.
- [ ] 4.2 Tabela szans ze 100% pewnością na minimalnie rzadkość Epic i wbudowaną "Pity Mechanics" (jeśli zrobisz 10 losowań premium, masz zagwarantowany 1 Mythic).