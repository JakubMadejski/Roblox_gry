# 🎨 Zadania: Grafika i Modele (VFX & Blender)

## 1. Tworzenie Aur (Blender -> Studio)
- [ ] 1.1 Modele bazowe: Pierścienie (Rings), Halos, Lewitujące Miecze, Kryształy. 
- [ ] 1.2 Export w optymalnym formacie (FBX) do Roblox Studio z zastosowaniem przezroczystości (SurfaceAppearance / ForceField material).
- [ ] 1.3 Moduł Animacji Aur (`AuraAnimator` - LocalScript):
  - [ ] Skrypt na Kliencie pobierający z folderu `Character` gracza obiekty aury.
  - [ ] Użycie `TweenService` lub pętli `RunService.RenderStepped` do stałego, płynnego obrotu wokół gracza (CFrame.Angles).

## 2. Efekty Particle Emitter i Dźwięk
- [ ] 2.1 Podpięcie `ParticleEmitter` do części ciał aury – błyskające iskry, czarny płomień itp.
- [ ] 2.2 Unikalne efekty dźwiękowe podczas chodzenia (jeśli aura jest Mityczna) – lekkie dudnienie basu.

## 3. Interfejs Główny (Dopaminowy UI)
- [ ] 3.1 Ekran Losowania (Roll Screen):
  - [ ] Wciśnięcie "Roll" wywołuje głośny, budujący napięcie dźwięk.
  - [ ] Ekran 2D mruga lub przewija szybko teksty (efekt slot machine).
- [ ] 3.2 Złoty Ekran / Cutscenka (Dla rzadszości powyżej 1/100,000):
  - [ ] Kamera na ułamek sekundy trzęsie się (Camera Shaker).
  - [ ] Powiadomienie wyskakuje na środku ekranu z neonowym glowem, przy dźwięku "wybuchowej fanfary".
  - [ ] Opcjonalnie: Globalny komunikat na czacie dla całego serwera `[SYSTEM]: Gracz XYZ wylosował Mityczną aurę: DEMONIC!`.

## 4. Ołtarze w Lobby
- [ ] 4.1 Zbudowanie 3 posągów 3D pod Style (Anime, Gym, Brainly) posiadających w sobie strefę aktywacyjną z `ProximityPrompt` dla drzewka umiejętności.