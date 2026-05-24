# 🛡️ GDD - Dokument Wstępny: CyberGrid: Neon Defense

> Dokumentacja Projektowa (Game Design Document) opisująca unikalną grę Tower Defense w klimatach cybernetycznego hakowania, system rozmieszczania na siatce oraz mechaniki gacha.

---

## 🔄 1. Koncept i Pętla Gry (Core Loop)
Gracz wciela się w hakera, którego zadaniem jest obrona "Rdzenia Serwera" przed falami wirusów, trojanów i złośliwego oprogramowania (Malware) za pomocą cyfrowych programów obronnych (Wież).

**Główna Pętla Rozgrywki:**
1. ⚔️ **Obrona Węzła (Mecz):** Strategiczne rozstawianie wież na mapie i walka z falami.
2. 💰 **Nagrody:** Zdobywanie waluty: Kredyty (Credits) i Fragmenty Kodu (Code Fragments).
3. 🏛️ **Lobby (Hub):** Powrót do centralnego węzła po udanej/przegranej obronie.
4. 🎲 **Gacha:** Losowanie nowych wież i programów obronnych za zdobyte zasoby.
5. 📈 **Progresja:** Ulepszanie Drzewka Umiejętności i przechodzenie do trudniejszych Węzłów (Map).

---

## ⚙️ 2. Mechaniki i Skrypty (Luau)

### 🏗️ System Rozmieszczania (Grid & Placement)
- **Grid Snapping:** Skrypt używający `Raycasting` do przyciągania modeli wież do wirtualnej siatki 3D na mapie.
- **Zabezpieczenia (Anti-Exploit):** Surowa weryfikacja na serwerze, aby uniknąć stawiania wież poza mapą lub na ścieżce wroga (poza wybranymi klasami).

### 🤝 System Synergii
- **Sąsiedztwo:** Wieże zyskują bonusy statystyk, jeśli stoją obok siebie na siatce.
  > 🧮 **Wzór na obrażenia:** `Obrazenia = Baza * (1 + Bonus_Z_Synergii)`

### ♟️ Klasy Jednostek Obronnych
- **Blastery (AoE):** Standardowe wieże zadające obrażenia obszarowe wirusom.
- **Firewalle (Blokery):** Unikalne wieże stawiane *na* samej ścieżce, tymczasowo zatrzymujące wrogów.
- **Kryptografy (Wsparcie):** Jednostki ekonomiczne, generujące dodatkowe "Kredyty" co falę bez atakowania wrogów.

### 👾 Ścieżki i Ruch Wrogów
- **Waypointy:** Serwer korzysta z folderu predefiniowanych punktów trasy (Waypoints).
- **Wydajność:** Omijanie humanoida na rzecz `TweenService` lub manualnej zmiany `CFrame`, co drastycznie zmniejsza lagi przy setkach zespawnowanych wirusów na ekranie.

---

## 🎨 3. Grafika i Modele (Blender / 3D)

- **Styl Cyberpunk / Tron:** Minimalistyczne, geometryczne modele (Low-Poly) z dominantą ciemnych teł i jasnych, emisyjnych, neonowych krawędzi (Wireframe).
- **Glitchujące Animacje:** Przeciwnicy nie chodzą płynnie – ich ruchy klatkują, "glitchują" i zostawiają powidoki (wykorzystanie `Trail` / `ParticleEmitter`).
- **Wizualizacja UI na mapie:** 
  - Zasięg wieży: pulsujący okrąg na ziemi przy kliknięciu.
  - Synergia: widoczna wiązka lasera (`Beam`) łącząca ze sobą zsynergizowane wieże.

---

## 💎 4. Monetyzacja i Utrzymanie Gracza

- ⏩ **Płatne Udogodnienia (Gamepasses):**
  - *Auto-Skip / Speed x2:* Szybsze fale i pomijanie przerw (kluczowe dla farmerów).
  - *Auto-Replay:* Automatyczne restartowanie wygranej mapy (świetne dla graczy AFK).
- 🎰 **Ekskluzywne Banners (Gacha):** Podział banerów na klasyczne (za walutę z gry) i Premium (za Robuxy), ze zwiększoną szansą na wylosowanie jednostki "Mitycznej".
- 🎭 **Skórki (Skins):** Kosmetyczna zmiana wyglądu jednostek, np. zmiana koloru promieni z niebieskiego na "Mroczny Wirusowy" (bez p2w, tylko wygląd).