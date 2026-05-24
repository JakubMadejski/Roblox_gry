# 🎨 Zadania: Grafika, Modele i Blender

## 1. Model Postaci i Skinned Meshes
- [ ] 1.1 Przygotowanie w Blenderze:
  - [ ] Import riga z Robloxa (R15).
  - [ ] Stworzenie bazowej siatki ciała i przypisanie wag kości (Weight Painting).
- [ ] 1.2 Implementacja Shape Keys (Blend Shapes):
  - [ ] Wymodelowanie deformacji `Fat` (powiększenie brzucha i policzków).
  - [ ] Wymodelowanie deformacji `Muscle` (poszerzenie barków i klatki piersiowej).
- [ ] 1.3 Implementacja w Roblox Studio:
  - [ ] Import modelu .fbx do Studio.
  - [ ] Napisanie skryptu modyfikującego na bieżąco właściwość wielkości MeshParta pod wpływem statystyk postaci.

## 2. Zniszczalne Ubrania i Akcesoria
- [ ] 2.1 Skrypt Ubrań Zwykłych:
  - [ ] Śledzenie zmiany rozmiaru postaci (`GetPropertyChangedSignal`).
  - [ ] Ustalenie limitu (Threshold) – gdy `Muscle + Fat` przekroczy X, usuń obiekt koszulki (Shirt).
  - [ ] Odtworzenie efektu: `ParticleEmitter` z teksturą kawałków materiału i dźwięk rozdarcia.
- [ ] 2.2 Sklep z Elastycznymi Ubraniami:
  - [ ] Utworzenie ubrań (Premium), których skrypt zniszczenia nie obowiązuje.

## 3. System Animacji Zależny od Wagi
- [ ] 3.1 Stworzenie Animacji (Animation Editor):
  - [ ] Paczka: Szybki i lekki chód/bieg.
  - [ ] Paczka: Ociężały chód z bujaniem się na boki (dla wysokiego Fat %).
- [ ] 3.2 Integracja Animacji (Skrypt):
  - [ ] Podmiana ID w domyślnym skrypcie `Animate` postaci.
  - [ ] Przełączanie zestawu animacji, gdy `FatPercent` przekroczy np. 50%.