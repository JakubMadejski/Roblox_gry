# 🎲 GDD - Dokument Wstępny: RNG Dopamine Simulator

> Dokumentacja Projektowa (Game Design Document) opisująca maksymalnie angażującą grę AFK opartą na losowości (RNG), zbieraniu rzadkich aur i systemie ulepszeń.

---

## 🔄 1. Koncept i Pętla Gry (Core Loop)
Celem gracza jest wylosowanie jak najrzadszej aury i tytułu, którymi może pochwalić się w lobby. Gra opiera się na ciągłym stymulowaniu dopaminy przez satysfakcjonujące efekty wizualne i dźwiękowe.

**Główna Pętla Rozgrywki:**
1. 🎰 **Roll:** Naciskanie przycisku losowania (lub zostawienie gry w trybie AFK/Auto-Roll).
2. ✨ **Zbieractwo:** Zbieranie niezwykle rzadkich Aur (np. 1 na 1 000 000) i przypisywanie ich do postaci.
3. 🪙 **Ulepszenia:** Zarabianie pasywnej waluty z losowań i kupowanie za nią ulepszeń (Skill Tree).
4. 💎 **Flex:** Eksponowanie najrzadszych tytułów (Stylów) przed innymi graczami w Hubie.

---

## ⚙️ 2. Mechaniki i Skrypty (Luau)

### 🎲 System Losowania (RNG & Drop Tables)
- **Matematyka Szans:** Skrypt serwerowy obliczający `math.random` w gigantycznych pulach (np. 1 do 1,000,000). System Drop Table decyduje, jaki tytuł otrzymuje gracz.
- **Zabezpieczenie AFK:** System oparty na `Tickrate Check`, który zapobiega zasypywaniu serwera przez exploitery auto-clickerami. Autoryzacja losowania (Cooldown) zawsze odbywa się po stronie serwera.

### 🌳 Drzewko Ulepszeń (Skill Tree)
- Waluta i punkty AFK służą do odblokowywania trwałych ulepszeń: *+Luck Szansa*, *Szybszy Roll Cooldown*, *Mnożnik Monet*.

### 🎭 System Stylów (Anime / Gym / Brainly)
- Otrzymany rzadki "Styl" wpływa na całego awatara. Zmienia: 
  - Zestaw animacji (Idle, Walk).
  - Unikalne GUI / Title nad głową awatara.
  - Kolorystyczny *Chat Tag*.

---

## 🎨 3. Grafika i Efekty Wizualne (Blender / VFX)

- **Aury (Serce Gry):** Skomplikowane siatki geometryczne (pierścienie, demoniczne skrzydła, latające kryształy) tworzone w Blenderze. W Roblox są one animowane bez końca za pomocą `TweenService` połączonego z `Beams`, `Trails` i `ParticleEmitters`.
- **Znakowanie Rzadkości:** Im rzadszy wylosowany drop, tym aura jest większa, głośniejsza przy losowaniu, posiada mocniejszy materiał "Neon" i wpływa na większy zasięg mapy wokół gracza.
- **Wizualizacja Drzewka Umiejętności:** Trójwymiarowe, neonowe ołtarze lub posągi w Lobby (np. gigantyczna głowa Anime dla ścieżki Anime).

---

## 💰 4. Monetyzacja (Agresywna Pay-to-Win)

- 🍀 **Mnożniki Szczęścia (Luck):** Płatne pigułki/potki x2 Luck (Boosty tymczasowe kumulujące się ze sobą) – zachęcają do wydawania Robuxów tuż przed zostawieniem PC na noc w AFK.
- ⏩ **Szybkie Losowanie:** Usunięcie wymuszonego cooldownu z losowań jako Gamepass (np. *Fast Roll* i *Instant Roll*).
- 🎒 **Płatne Sloty:** Ekwipunek gracza mieści na początku mało aur. Rozszerzenie bagażu kosztuje walutę premium.
- 🎰 **Maszyna Losująca VIP (Slots):** Złota mini-gra w GUI, dostępna za Robuxy. Eliminuje najniższe szanse, dając np. gwarancję dropu z kategorii min. "Epic" / "Top Tier".