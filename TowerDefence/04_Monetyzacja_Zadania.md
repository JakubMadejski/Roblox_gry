# 💰 Zadania: Monetyzacja i Retencja

## 1. System Gamepassów (Wygoda)
- [ ] 1.1 Utworzenie przepustki **Auto-Skip**:
  - [ ] W skrypcie menedżera fal weryfikacja `UserOwnsGamePassAsync`.
  - [ ] Wyświetlenie przycisku "Toggle Auto-Skip" w GUI gry, który pomija czas przygotowania między falami.
- [ ] 1.2 Utworzenie przepustki **Prędkość x2**:
  - [ ] Przycisk w grze, który po kliknięciu przyspiesza na serwerze pętle czasowe (skala czasu `TimeScale`) wrogów i prędkość ataku wież (tylko z perspektywy gracza, wymaga ostrożnej inżynierii CFrame).

## 2. Gacha Premium i Waluty
- [ ] 2.1 Utworzenie Developer Products na paczki "Code Fragments" (Waluta Premium do rzadszego Baneru).
- [ ] 2.2 Skrypt obróbki zakupu (ProcessReceipt) zabezpieczający przed utratą Robuxów przy ewentualnym crashu (dodawanie do tabeli `CodeFragments` w ProfileService i zapis).

## 3. System Skórek i Kosmetyki (Długoterminowa Gra)
- [ ] 3.1 Menu Kosmetyczne (Skins):
  - [ ] UI pozwalające graczowi na podgląd modelu po założeniu skina.
  - [ ] Zapis zaekwipowanych skórek w DataStore (pod kluchem `EquippedSkins`).
- [ ] 3.2 Aplikacja Skina w Grze:
  - [ ] Logika podmieniająca Mesh/Kolory/Efekty po stworzeniu (`Clone`) wieży na mapie, weryfikująca posiadanie danego skina przez serwer.
  - [ ] Wstawienie kilku ekskluzywnych skinów za Robuxy na start.