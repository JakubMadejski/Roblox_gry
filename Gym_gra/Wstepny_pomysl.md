# 🏋️ GDD - Dokument Wstępny: Gym Simulator

> Dokumentacja Projektowa (Game Design Document) opisująca system tkanki tłuszczowej, mechaniki postaci i główną pętlę rozgrywki.

---

## 🔄 1. Koncept i Pętla Gry (Core Loop)
Gracz musi zachować idealny balans pomiędzy budowaniem masy mięśniowej a redukcją tkanki tłuszczowej. Cel? Osiągnąć perfekcyjną sylwetkę i dominować na zawodach sylwetkowych.

**Główna Pętla Rozgrywki:**
1. 🍔 **Jedzenie:** Spożywanie posiłków (dostarcza *Energię* + *Tłuszcz*).
2. 🦾 **Trening:** Wykorzystanie energii na *Trening Siłowy* (Mięśnie) lub *Cardio* (Spalanie Tłuszczu).
3. 🏆 **Zawody:** Prezentacja sylwetki na scenie dla Monet i Sławy.
4. 💸 **Rozwój:** Ulepszanie Trenerów i resetowanie postępu (*Rebirth*).

---

## ⚙️ 2. Mechaniki i Skrypty (Luau)

### 🍕 System Tkanki Tłuszczowej i Energii
- **Wymóg Energii:** Trening zawsze wymaga energii pozyskiwanej z jedzenia.
- **Junk Food:** Tanie jedzenie (np. burgery) błyskawicznie ładuje energię, ale podnosi wskaźnik **Tkanki Tłuszczowej (Fat %)**.
- **Efekty Wizualne:** Wysoki *Fat %* sprawia, że postać staje się okrągła, ukrywając definicję mięśni i obniżając szanse na wygraną w zawodach.

### 🏋️ Rodzaje Treningu
- **Siłowy (Hantle, Sztangi):** Buduje masę mięśniową, ale zużywa ogromne ilości energii.
- **Cardio (Bieżnie, Rowerki, Skakanka):** Spala tkankę tłuszczową i zwiększa "Staminę".
  > 🧮 **Wzór na spalanie:** `Spalony_Tluszcz = Czas_Treningu * Mnoznik_Maszyny * Poziom_Cardio`

### 💪 Pompa Mięśniowa (Pump) i Zawody
- **Pompa:** Krótkotrwały bonus do wielkości modelu po intensywnym treningu. Zmusza to gracza do "dopompowania się" tuż przed zawodami.
- **Punktacja:** Oceniane są proporcje.
  > 🧮 **Wzór na wynik:** `Wynik = (Suma_Miesni / 100) - (Tkanka_Tluszczowa * Kara_Za_Tluszcz) * Poza_Mnoznik`

---

## 🎨 3. Grafika i Modele (Blender / 3D)

- **Skinned Meshes:** Dynamiczne skalowanie ciała dzięki modyfikatorom (*Blend Shapes* / *Shape Keys* w Blenderze). 
  - `Fat`: Rozlewanie się siatki na boki, zaokrąglenie brzucha.
  - `Muscle`: Uwydatnienie klatki, ramion i pleców.
- **Zniszczalne Ubrania:** Gdy gracz zbyt szybko nabierze masy (mięśniowej lub tłuszczowej), zwykłe ubrania wizualnie pękają. Aby tego uniknąć, gracz może zakupić specjalne, "elastyczne" ubrania.
- **Animacje Ciężaru:** Im większy procent tłuszczu, tym bardziej ociężałe stają się animacje (bieg, chód, wykonywanie ćwiczeń).

---

## 💰 4. Ścieżki Monetyzacji (Robux)

- 💊 **Spalacze Tłuszczu (Fat-Burners):** Płatne pigułki zbijające *Fat %* do 5% bez konieczności cardio.
- 🥗 **Catering Dietetyczny (Gamepass):** Pasywnie i automatycznie uzupełnia czystą Energię gracza bez dodawania tkanki tłuszczowej.
- ⚖️ **Waga Premium (Tools):** Przedmiot do wglądu w dokładne, ukryte statystyki (np. co do punktu z ilu jednostek składa się klatka piersiowa).