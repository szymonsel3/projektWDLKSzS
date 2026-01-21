# Repozytorium Projektowe – Portfolio Studenta

## Główny Cel Projektu

Celem tego projektu jest praktyczne zastosowanie wiedzy zdobytej podczas laboratoriów z zakresu:

- systemów Linux,
- automatyzacji w Bashu,
- składu tekstu w LaTeX,
- kontroli wersji Git.

---

## Struktura Repozytorium

bash/
- classification/
* inbox/ # Nowe pliki do sklasyfikowania
* classified/ # Pliki już sklasyfikowane
- duplicates/
* files/ # Wyszukane duplikaty plików
latex/
- script/
* parts/ # Pliki .tex z poszczególnych części materiałów
* main.tex # Główny plik LaTeX łączący wszystkie części
* script_wdlk.pdf # Finalny skompilowany dokument PDF
- instruction/
* instruction.pdf # Skompilowany plik z instrukcją
* screenshots/ # Zrzuty ekranu ilustrujące instrukcje
** main.tex # Plik źródłowy instrukcji



---

## Zawartość katalogów

### Bash

- **bash/classification/** – katalog dla skryptu sortującego pliki.
  - `inbox/` – nowe pliki do klasyfikacji.
  - `classified/` – pliki po przetworzeniu.
  - Skrypt: `skrypt1.sh`

- **bash/duplicates/** – katalog dla skryptu wyszukującego duplikaty.
  - `files/` – znalezione duplikaty 
  - Skrypt: `skrypt3.sh`

### LaTeX

- **latex/script/** – połączony skrypt dla studentów.
  - `parts/` – wszystkie części materiałów w formacie `.tex`.
  - `main.tex` – plik główny, który łączy wszystkie części w jeden dokument PDF za pomocą komendy `\input{parts/nazwa_pliku.tex}` 
  - `script_wdlk.pdf` – finalny, skompilowany dokument PDF.

- **latex/instruction/** – instrukcja techniczna przygotowana w LaTeX.
  - Temat instrukcji:  Jak zainstalować i skonfigurować maszynę wirtualną (np. VirtualBox) z Ubuntu.
  - `screenshots/` – zrzuty ekranu ilustrujące kluczowe kroki.
  - `main.tex` – plik źródłowy instrukcji.
  - `instruction.pdf` – skompilowany dokument PDF.

---

## Jak korzystać z repozytorium

### Bash

1. Wrzucaj nowe pliki do `bash/classification/inbox/`.
2. Uruchom skrypt `skrypt1.sh`, aby automatycznie sklasyfikować pliki do katalogu `classified/` 
3. Uruchom `skrypt3.sh`, aby wyszukać i przenieść duplikaty do `duplicates/files/`.

### LaTeX

1. Przejdź do katalogu `latex/script/`.
2. Upewnij się, że wszystkie części `.tex` znajdują się w `parts/`.
3. Skompiluj `main.tex`, aby wygenerować spójny dokument PDF `script_wdlk.pdf`.

Analogicznie, aby skompilować instrukcję techniczną:
1. Przejdź do `latex/instruction/`.
2. Skompiluj `main.tex`, aby wygenerować `instruction.pdf`.
3. Wszystkie screenshoty powinny znajdować się w katalogu `screenshots/` 

---

## Wymagania

- Bash 
- LaTeX (np. TeX Live, MiKTeX)
- Git do kontroli wersji
