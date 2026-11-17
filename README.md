# Cachy Plasma Distro

Autorska dystrybucja Linuksa **bazująca na CachyOS** (Arch Linux z repozytoriami CachyOS),
z pulpitem **KDE Plasma**, obsługą aplikacji Windows przez **Wine**, sklepem **Discover** (repozytoria Arch/CachyOS + Flathub) oraz graficznym instalatorem **Calamares** — tak jak w CachyOS.

## Realistyczne wymagania

> Pierwotne założenia (1 GB na dysku / 512 MB RAM / całkowita odporność na wirusy)
> są technicznie niewykonalne dla systemu z KDE Plasma i Wine. Poniżej wymagania realne:

| Zasób | Minimum | Zalecane |
|---|---|---|
| RAM | 4 GB | 8 GB |
| Dysk | 8 GB (20 GB dla Wine) | 40 GB |
| CPU | x86-64-v3 (jak CachyOS) | dowolny nowoczesny 64-bit |

## Co zawiera system

- **Kernel**: `linux-cachyos` (zoptymalizowany, z schedulerem BORE)
- **Pulpit**: KDE Plasma 6 + SDDM
- **Aplikacje Windows**: Wine + wine-mono + wine-gecko (obsługa wielu .exe — nie wszystkich)
- **Sklep**: Discover + Flatpak + Flathub (dziesiątki tysięcy aplikacji)
- **Instalator**: Calamares z konfiguracją w stylu CachyOS
- **Dźwięk**: PipeWire, **Sieć**: NetworkManager
- **Przeglądarka**: Firefox

## Bezpieczeństwo — uczciwie

Linux + repozytoria podpisane GPG dają wysoki poziom ochrony, ale **żaden system nie jest
odporny na wirusy w 100%**. W szczególności złośliwe oprogramowanie Windowsowe uruchamiane
przez Wine **może** działać. Profil dodaje `firewalld` i domyślnie włączoną zaporę.

## Budowanie ISO

Wymaga maszyny z CachyOS (lub Arch Linux) i ~15 GB wolnego miejsca.

```bash
git clone https://github.com/pines3000i-ops/cachy-plasma-distro.git
cd cachy-plasma-distro
chmod +x build.sh
./build.sh
```

Gotowe ISO pojawi się w katalogu `out/`.

## Struktura projektu

```
profiledef.sh        – definicja profilu archiso
packages.x86_64      – lista pakietów systemu
pacman-cachyos.conf  – repozytoria CachyOS używane przy buildzie
airootfs/            – pliki nakładane na system live (Calamares, SDDM, flathub)
build.sh             – skrypt budujący ISO
```
