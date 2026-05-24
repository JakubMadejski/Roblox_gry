# 🎯 Zadania: Core Loop i Architektura Danych

## 1. System Zapisu Danych (DataStore)
- [ ] 1.1 Zainstalowanie modułu do zapisu danych (np. ProfileService).
- [ ] 1.2 Zaprojektowanie struktury tabeli gracza:
  - [ ] `Energy` (Zmienna typu liczba, limitowana 0-100).
  - [ ] `Fatigue` (Zmęczenie, liczba 0-100).
  - [ ] `Muscle` (Liczba, reprezentuje ogólną masę).
  - [ ] `FatPercent` (Liczba 0-100, reprezentuje %).
  - [ ] `Coins` (Waluta).
- [ ] 1.3 Utworzenie Skryptu Liderboardu:
  - [ ] Skrypt na serwerze (`ServerScriptService`), który podpina dane z profilu pod folder `leaderstats`.

## 2. Pętla Rozgrywki (Game Loop Manager)
- [ ] 2.1 Menedżer Cyklu Dnia/Zawodów:
  - [ ] Skrypt z pętlą `while true do`, odmierzający czas do kolejnych zawodów.
  - [ ] Funkcja wysyłająca sygnał (RemoteEvent) "Zawody wystartowały" do wszystkich graczy.

## 3. Interfejs Gracza (Core UI)
- [ ] 3.1 Pasek Energii (Energy Bar):
  - [ ] Stworzenie UI (ScreenGui -> Frame -> Bar).
  - [ ] LocalScript aktualizujący długość paska na podstawie zmiany zmiennej `Energy`.
- [ ] 3.1a Pasek Zmęczenia (Fatigue Bar):
  - [ ] UI paska zmęczenia (np. pod energią), który wypełnia się przy ćwiczeniach i pulsuje na czerwono ostrzegając gracza blisko 100%.
- [ ] 3.2 Wskaźnik Tkanki Tłuszczowej i Mięśni:
  - [ ] Dodanie tekstu wyświetlającego dokładny `% Fat`.

## 4. System Rebirth
- [ ] 4.1 Logika Resetu:
  - [ ] Dodanie warunku sprawdzającego, czy gracz ma odpowiednią ilość `Muscle` do Rebirthu.
  - [ ] Funkcja zerująca `Muscle` i `FatPercent`.
  - [ ] Funkcja przyznająca token/mnożnik `Rebirth Multiplier`.
- [ ] 4.2 GUI dla Rebirth:
  - [ ] Przycisk i okno z potwierdzeniem operacji.