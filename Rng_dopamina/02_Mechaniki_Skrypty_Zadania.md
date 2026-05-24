# ⚙️ Zadania: Mechaniki (RNG i System Stylów)

## 1. Silnik Losujący (RNG Core)
- [ ] 1.1 Tabela Szans (ModuleScript `DropTable`):
  - [ ] Rozpisanie aur w słowniku: `Common = 1/2, Rare = 1/50, Epic = 1/500, Legendary = 1/10000, Mythic = 1/1000000`.
- [ ] 1.2 Skrypt Losowania (`RollService`):
  - [ ] Obliczanie aktualnego modyfikatora *Luck* gracza (zależne od boostów i ulepszeń).
  - [ ] Losowanie liczby `math.random(1, MaxSzansa / MnoznikLuck)`.
  - [ ] Zwrócenie wylosowanej aury na podstawie wylosowanej liczby i zapisanie do ekwipunku gracza.

## 2. System Ekwipunku (Inventory)
- [ ] 2.1 Skrypt weryfikujący ilość przedmiotów (Limit np. 50 aur). Jeśli pełny – zablokuj losowanie, powiadom klienta.
- [ ] 2.2 Logika Usuwania (Delete): Skrypt usuwający niechciane słabe aury w zamian za niewielką ilość waluty gry (Coins).
- [ ] 2.3 Automatyczne usuwanie (Auto-Delete): Dodanie filtra, by gra z automatu kasowała aury rzadszości poniżej np. *Epic*.

## 3. System Wyposażania i Stylów (Equip)
- [ ] 3.1 Mechanika ubierania (ServerSide):
  - [ ] Odebranie `RemoteEvent` wyboru aury.
  - [ ] Usunięcie starej aury (jeśli istnieje) z modelu awatara gracza.
  - [ ] Skopiowanie modelu wybranej aury z `ServerStorage` do postaci `Character`.
- [ ] 3.2 Nakładanie modyfikatorów:
  - [ ] Zmiana statystyk (np. wyższy skok, zmiana `WalkSpeed`).
  - [ ] Podpięcie unikalnego *BillboardGui* z nazwą aury i animowanym tekstem nad głową.
  - [ ] Integracja z Chatem: nadpisanie przedrostka (Chat Tag) na podstawie wyposażonego stylu za pomocą modyfikacji *TextChatService*.