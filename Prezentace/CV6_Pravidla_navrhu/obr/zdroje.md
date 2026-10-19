# Skladba DPS: vlastní ilustrace a odborné zdroje

Schémata stackupu a návratových cest jsou vlastní ilustrace v češtině (TikZ).
Detaily rozmístění jsou vlastní exporty z KiCadu 10. Převzaté obrázky TI
jsou tři uživatelem dodané snímky popsané níže. Výuková syntéza principů uvedených níže.
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

## Návratové cesty – doplněno 19. 10. 2026

Číslování odpovídá posledním dvěma slajdům prezentace. Na obsahových slajdech
jsou jen drobné odkazy na doporučení; převzatý obrázek má navíc citaci obrázku.

7. Art Kay, Texas Instruments: PCB Trace as a Wave Guide, TI Precision Labs – ADCs:
   https://www.ti.com/video/6307562268112
   Podklad k videu (lokální kopie `ti_pcb_trace_waveguide.pdf`):
   https://www.ti.com/content/dam/videos/external-videos/zh-tw/9/3816841626001/6307562268112.mp4/subassets/pcb-trace-as-wave-guide-presentation-quiz.pdf
   Uživatelem dodané printscreeny ze stejného zdroje, použité beze změn obsahu:
   - `wave_guide_no_vias.png`: snímek 9, přechod bez blízkého propojení GND.
   - `wave_guide_gnd_vias.png`: snímek 8, přechod mezi GND plochami s GND prokovy.
   - `wave_guide_capacitors.png`: snímek 12, přechod GND/PWR přes kondenzátor.
   Každý obsahuje boční i horní pohled; obrázky jsou citovány přímo na slajdech
   a úplný zdroj je v závěrečném seznamu pod číslem 7. Kresby jsou TI, nikoli
   vlastní screenshoty editoru. Nahrazují dřívější osamocený horní výřez z PDF.
8. David L. Jones: PCB Design Tutorial, revize A, 29. 6. 2004.
   Veřejná kopie pro studenty, str. 19–20:
   https://www.scs.stanford.edu/~zyedidia/docs/pcb/pcb_tutorial.pdf
   Odkaz v prezentaci nahrazuje cestu k lokální kopii `../doc/pcb_tutorial.pdf`.
   Použity zásady krátkého připojení lokálních blokovacích kondenzátorů.
   Starší doporučení na dělení zemních ploch nejsou přebírána jako obecné pravidlo.
9. Phil Salmony (Phil's Lab): Vias 101: Standards, Sizing, and Spacing:
   https://resources.altium.com/p/vias-101
   Transfer Vias a Placement: návratové prokovy, kapacitní vazba GND/PWR,
   krátké a široké přípoje. Žádné obrázky z tohoto článku nebyly převzaty.

### Vlastní editovatelné ilustrace

- `return_gnd.tex` / `.pdf`: schématický řez SIG/GND/GND/SIG a návratový prokov.
- `return_cap.tex` / `.pdf`: schématický řez SIG/GND/PWR/SIG a kapacitní vazba.
  Šipky znázorňují jeden okamžitý směr vysokofrekvenčního proudu, ne DC spojení
  přes kondenzátor. Antipady oddělují nepříslušné měděné plochy od prokovů.
- `layout_gnd.kicad_pcb`, `layout_cap.kicad_pcb`: vlastní čtyřvrstvé výukové
  desky. U1 je obecný třívývodový model, nikoli reálné pouzdro/pinout IC.
  C1 má dvě SMD plošky. Vnitřní referenční plochy jsou vyplněné, v exportu
  však skryté. Desky nejsou určené pro výrobu ani nejsou vzorem kompletní DPS.
- `make_return_layouts.py`: generátor desek pomocí knihovny pcbnew z KiCadu 10.
  Spouštět z `obr` Pythonem dodávaným s KiCadem. Nepoužívá uživatelovy projekty.
- `layout_*_full.pdf`: vlastní barevný export KiCad CLI, vrstvy
  `B.Cu,F.Cu`, režim single, bez rámečku.
- `layout_*_labels.pdf`: export `Dwgs.User,Edge.Cuts` s volbou black-and-white;
  tmavé popisky a obrysy pro dobrou čitelnost na bílém pozadí.
- `layout_gnd.tex` / `.pdf`, `layout_cap.tex` / `.pdf`: složení a výřezy obou exportů.
  Překlad stejně jako samostatné řezy pomocí pdflatex ve složce `obr`.

Ukázky zdůrazňují topologii a blízkost spojů; neurčují univerzální vzdálenost
prokovů ani univerzální hodnotu kondenzátoru. Kapacita mezi PWR a GND musí
náležet správné napájecí síti a mít vhodnou vysokofrekvenční impedanci.
