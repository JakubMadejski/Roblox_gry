# ⚙️ Zadania: Mechaniki (Wieże i Wrogowie)

## 1. System Rozmieszczania (Placement System)
- [ ] 1.1 Skrypt Klienta (LocalScript):
  - [ ] Wykorzystanie `Mouse.Hit.Position` lub `Raycast` z kamery.
  - [ ] Obliczenia "Snap to Grid": `math.round(Pos / GridSize) * GridSize`.
  - [ ] Wyświetlanie półprzezroczystego modelu (Ducha) reprezentującego wieżę, zmieniającego kolor na czerwony, jeśli miejsce jest niedozwolone (koliduje ze ścieżką lub inną wieżą).
- [ ] 1.2 Skrypt Serwera (Weryfikacja):
  - [ ] Odbieranie `RemoteEvent(PlaceTower, CFrame, TowerName)`.
  - [ ] Obliczanie kosztu i odejmowanie waluty "In-Match Cash".
  - [ ] Sprawdzanie poprawności koordynatów po stronie serwera i wstawienie rzeczywistego modelu.

## 2. Ruch Przeciwników
- [ ] 2.1 Waypointy: Stworzenie folderu `Waypoints` z obiektami Part (1, 2, 3...) wyznaczającymi trasę.
- [ ] 2.2 Serwerowy Silnik Ruchu:
  - [ ] Skrypt w `ServerScriptService` aktualizujący wszystkie obiekty wrogów w pętli (zamiast skryptów w każdym modelu wroga dla optymalizacji).
  - [ ] Zastosowanie logiki opartej o `CFrame` lub wbudowanego `TweenService` wzdłuż punktów z folderu.

## 3. Logika Wież (Combat System)
- [ ] 3.1 Targetowanie (Celowanie):
  - [ ] Pętla `Task.spawn` dla każdej wieży, skanująca najbliższych wrogów (Magnitude / Radius).
  - [ ] Logika "First" (pierwszy na trasie) i "Closest" (najbliżej wieży).
- [ ] 3.2 Strzelanie i Klasy:
  - [ ] **Blastery:** Odtwarzanie promienia (Ray) i zadawanie obrażeń HP wroga.
  - [ ] **Firewalle:** Specjalne umieszczanie na drodze (ignoruje zakaz stawiania na ścieżce). Skrypt spowalnia lub zatrzymuje pobliskiego wroga na X sekund.
  - [ ] **Kryptografy (Farmy):** Co każdy sygnał `WaveEnded`, dodaje graczowi in-game gotówkę w trakcie rundy.

## 4. System Synergii
- [ ] 4.1 Przy postawieniu nowej wieży skanuj obszar 2x2 grid w poszukiwaniu kompatybilnych wież (np. za pomocą tagów `CollectionService`).
- [ ] 4.2 Aktualizacja mnożnika `DamageMultiplier` sąsiadom i dodanie wizualnego obiektu `Beam`.