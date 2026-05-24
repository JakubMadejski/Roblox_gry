# 💰 Zadania: Monetyzacja (Robux)

## 1. Spalacze Tłuszczu (Developer Products)
- [ ] 1.1 Dodanie Developer Product w panelu Roblox i zapisanie jego ID.
- [ ] 1.2 Obsługa zakupu (ProcessReceipt):
  - [ ] Stworzenie skryptu `MarketplaceService.ProcessReceipt`.
  - [ ] Identyfikacja ID produktu w kodzie.
  - [ ] Zmiana zmiennej gracza `FatPercent` na 5.
  - [ ] Odtworzenie efektu wizualnego/dźwiękowego dla gracza informującego o sukcesie.

## 2. Catering Dietetyczny (Gamepass)
- [ ] 2.1 Konfiguracja: Utworzenie Gamepassa w panelu gry (ID).
- [ ] 2.2 System Pasywnej Energii:
  - [ ] Sprawdzenie podczas dołączenia (PlayerAdded) za pomocą `UserOwnsGamePassAsync`.
  - [ ] Jeśli posiada: odpalenie pętli odnawiającej +5 Energii co 10 sekund.
  - [ ] Zablokowanie przyrostu Fat% przy tym konkretnym zysku energetycznym.

## 3. Waga Premium (Tool)
- [ ] 3.1 Model 3D i UI:
  - [ ] Stworzenie obiektu `Tool` przypominającego inteligentną wagę.
  - [ ] Zaprojektowanie zaawansowanego GUI w środku Toola, pokazującego statystyki z dokładnością do drugiego miejsca po przecinku.
- [ ] 3.2 Logika Sklepu: Umożliwienie zakupu narzędzia za Robuxy lub wysoką walutę z gry.