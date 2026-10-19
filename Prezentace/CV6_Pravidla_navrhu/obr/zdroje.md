# Skladba DPS: vlastní ilustrace a odborné zdroje

Ilustrace vytvořeny pro tuto prezentaci v češtině (TikZ); nejedná se o stažené
či překreslené konkrétní cizí obrázky. Výuková syntéza principů uvedených níže.
Řezy nejsou v měřítku; nejsou závaznou výrobní specifikací dielektrik.

- `stackup_2layer.tex` / `.pdf`: (SIG + PWR) / GND.
- `stackup_4layer_power.tex` / `.pdf`: SIG / GND / PWR / SIG.
- `stackup_4layer_gnd.tex` / `.pdf`: (SIG + PWR) / GND / GND / (SIG + PWR).
- `stackup_style.tex`: společná typografie a barevnost.

Každý obrázek lze přeložit ve složce `obr`:
`pdflatex -interaction=nonstopmode -halt-on-error stackup_2layer.tex`
(obdobně pro ostatní samostatné řezy).

Zdroje ověřeny 19. 10. 2026:

1. Zachariah Peterson, Understanding 2-Layer PCB Ground Planes:
   https://resources.altium.com/p/understanding-ground-planes-your-two-layer-pcb
   Souvislá zem u dvouvrstvých desek, návratové cesty, kompromisy při trasování.
2. Zachariah Peterson, The Right Way to Use Power Planes in a 4-Layer PCB Stackup:
   https://resources.altium.com/p/right-way-use-power-planes-4-layer-pcb-stackup
   Reference signálů vůči napájecí ploše a její dělení; čtyři vrstvy nejsou univerzální řešení.
3. Zachariah Peterson, Two 4 Layer PCB Stackups With 50 Ohms Impedance:
   https://resources.altium.com/p/two-alternative-4-layer-pcb-stackups-50-ohms-impedance
   Dvě vnitřní zemní plochy, rozvod napájení na vnějších vrstvách, blízké GND prokovy.
4. Zachariah Peterson, Should You Use Your PCB Power Plane as a Return Path?:
   https://resources.altium.com/p/should-you-use-your-power-plane-as-a-return-path
5. Eric Bogatin, The Case for Split Ground Planes, Signal Integrity Journal, 21. 2. 2023:
   https://www.signalintegrityjournal.com/articles/2982-the-case-for-split-ground-planes
   Návratové proudy a důvody neporušovat referenční plochu pod signálem.
6. Phil's Lab, PCB Stackup Basics:
   https://resources.altium.com/p/pcb-stackup-basics
   Blízkost SIG--GND a PWR--GND; doporučení čtyř vrstev s dvěma GND.

Poslední varianta uživatelova zadání SIG/GND/GND/SIG+PWR je zde rozšířena
na symetrické funkční využití vnějších vrstev SIG+PWR/GND/GND/SIG+PWR.
Napájení lze při vhodném rozmístění vést jen na jedné vnější vrstvě, ale nejde
o nutnou vlastnost této skladby. Mechanická skladba má zůstat vyvážená.
Příklady tloušťky prepregu či šířky pro 50 ohmů nejsou bez výrobního stackupu
předepsány; je třeba použít údaje konkrétního výrobce a výpočet impedance.
