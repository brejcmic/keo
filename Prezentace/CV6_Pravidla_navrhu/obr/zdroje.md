# Skladba DPS: vlastní ilustrace a odborné zdroje

Schémata stackupu a návratových cest jsou vlastní ilustrace v češtině (TikZ).
Detaily rozmístění jsou vlastní exporty z KiCadu 10. Převzaté obrázky TI
jsou tři uživatelem dodané snímky popsané níže. Dále jsou převzaty tři obrázky
z článku All About Circuits [15] s uvedením původu u H. W. Otta.
Výuková syntéza principů uvedených níže.
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

## Přerušení zpětné cesty – funkční sloty

10. Alexander Weiler, Alexander Pakosta, Ankur Verma: High-Speed Layout Guidelines,
    Texas Instruments, SCAA082A, rev. A, srpen 2017:
    https://www.ti.com/lit/pdf/SCAA082A
    Část 1.6, str. 8–9 a obr. 6: slot nutí návrat k oklíce; vhodnější je
    souvislá reference nebo vedení signálu podél dostupné návratové cesty.
    Z tohoto dokumentu není převzat žádný obrázek ani univerzální doporučení dělit GND.

Nové obrázky jsou vlastní výukové aplikace principů [1, 9, 10], nikoli konkrétní
překreslené obrázky z těchto zdrojů. Půdorysy jsou schematické a nejsou v měřítku.
Červeně je horní signál, zeleně spodní GND, modře jedna ilustrativní cesta
vysokofrekvenční složky návratu (proud se ve skutečnosti rozděluje v ploše).

- `slot_examples.tex`: společná kresba a barevnost.
- `slot_connector_bad.tex` / `.pdf`: cizí průchozí plošky konektoru; spojené
  izolační odstupy v GND, trasa mezi piny a návrat kolem konce řady.
- `slot_connector_better.tex` / `.pdf`: vedení signálu kolem řady nad GND.
- `slot_crossing_bad.tex` / `.pdf`: cizí trasa na B.Cu vyřízne pás v GND,
  signál na F.Cu ji kříží jen v projekci; nejde o elektrický zkrat.
- `slot_crossing_better.tex` / `.pdf`: blízký GND můstek na F.Cu se dvěma
  prokovy propojujícími tutéž GND; nesmí se spojit s cizí spodní sítí.
  Jde o kompromis, nikoli ekvivalent souvislé plochy nebo univerzální recept.

Překlad všech čtyř samostatných `slot_*.tex` příkladů pomocí pdflatex ve složce
`obr` (soubor `slot_examples.tex` je pouze společný vstup, nepřekládá se samostatně).
Pojem funkční slot se v prezentaci používá pro funkční přerušení referenční mědi,
nikoli pro mechanickou drážku. Průchod mezi piny není automaticky chybný:
rozhoduje skutečný tvar naplněné GND a případná úzká hrdla mezi odstupy.

## Trasy napájení – blokovací a filtrační kondenzátory

11. Daniel Miller: Mixed Signals, Grounding and Bypass Capacitors,
    TI Precision Labs – Op Amps, Texas Instruments, 2021:
    https://www.ti.com/video/6245227303001
    Podklad, zejména snímky označené 7 a 8 (PDF strany 9–11):
    https://www.ti.com/content/dam/videos/external-videos/en-us/8/3816841626001/6245227303001.mp4/subassets/op_amp_pcb_layout_mixed_signals_grounding_and_bypass_capacitors.pdf
    Blokování blízko napájecího pinu; přívod přes napájecí plošku kondenzátoru,
    omezení indukčnosti dlouhých přípojek.
12. George Lakkas: Optimizing Layout for Synchronous Buck Converters,
    Texas Instruments, SSZTAL0, listopad 2016:
    https://www.ti.com/document-viewer/lit/html/SSZTAL0/GUID-CF03725F-911C-4A96-9391-0E639F290409
    Bypass Capacitors, Parasitic Components: krátké proudové smyčky, široké
    přípoje, proudové cesty přes svorky kondenzátorů. Nejde zde o kompletní
    návod k návrhu měniče; konkrétní měnič vyžaduje vlastní doporučený layout.

Ověřeno 19. 10. 2026. Dále použit [8] Jones, str. 19–20 (Good Bypassing,
připojení vstupu přes hlavní filtrační kondenzátor a výjimka pro přímé připojení
do ploch) a [9] Salmony (krátké a široké přípoje, blízké napájecí/GND prokovy).
Úplné zdroje zůstávají pouze na posledních třech slajdech.

Všechny čtyři nové obrázky jsou vlastní české ilustrace, nikoli převzaté kresby:

- `power_examples.tex`: společná kresba plošek, IC, prokovů a přípojek.
- `power_decoupling_bad.tex` / `.pdf`: C1 a C2 na dlouhých T odbočkách.
- `power_decoupling_better.tex` / `.pdf`: hlavní trasa přes napájecí plošky
  jednotlivých kondenzátorů, odbočení z plošky přímo k příslušnému IC.
- `power_filter_bad.tex` / `.pdf`: obě svorky filtračního kondenzátoru na
  dlouhých odbočkách od hlavní napájecí a návratové cesty.
- `power_filter_better.tex` / `.pdf`: přívod a odběr přímo na příslušných
  ploškách; kondenzátor je stále paralelně mezi PWR a GND, nikoli v sérii.

Samostatné příklady přeložit pdflatex ve složce `obr`. Obrázky nejsou v měřítku;
jde o topologii fyzického připojení, nikoli výrobní rozměry či reálné pinouty.
Připojení přes plošku je výchozí pravidlo pro jednoduché trasované napájení,
ne absolutní předpis pro všechny vícevrstvé PDN. U ploch může být výhodnější
přímé připojení pinu a kondenzátoru prokovy s menší celkovou indukčností.
Samotné T odbočení není chyba, pokud je uzel přímo na plošce a místní připojení
je krátké. Vstupní/bulk kondenzátor nenahrazuje lokální blokování každého IC.

## Více GND prokovů u plošky kondenzátoru

13. Art Kay: Decoupling Capacitors, TI Precision Labs – ADCs, Texas Instruments,
    2022: https://www.ti.com/video/6313253251112
    Podklad, snímky označené 7–8 (PDF strany 9–10):
    https://www.ti.com/content/dam/videos/external-videos/en-us/9/3816841626001/6313253251112.mp4/subassets/notes-decoupling_capacitors.pdf
    Zkrácení vzdálenosti k referenční ploše a více paralelních prokovů snižuje
    indukčnost; samotné zvětšení otvoru má menší účinek. Model dělení L počtem
    prokovů je v prezentaci výslovně označen za ideální, bez vzájemné vazby.
14. Murata: Application Manual for Power Supply Noise Suppression and Decoupling
    for Digital ICs, C39E, 2010, část 4.1, tištěné str. 24–26 (PDF strany 28–30):
    https://e2e.ti.com/cfs-file/__key/communityserver-discussions-components-files/14/c39e.pdf
    Vznik ESL, vazba magnetického toku a vzájemná indukčnost; použit jako
    fyzikální doplněk k ideálnímu paralelnímu modelu TI, nikoli jako důkaz
    konkrétního číselného poměru pro nakreslené GND prokovy.

- `power_ground_vias.tex` / `.pdf`: vlastní srovnávací půdorys kondenzátoru,
  jednoho většího GND prokovu a čtyř menších GND prokovů. Všechny vedou do
  stejné souvislé GND plochy ve stejné hloubce; široké přípojky nemají společné
  úzké hrdlo. Průměry ani rozteče nejsou výrobní předpis či kvantitativní simulace.
  Prokovy jsou mimo pájené plošky; kresba nepožaduje zvláštní technologii via-in-pad.

Fyzikální formulace uživatelského zadání je zpřesněna: délka jedné magnetické
indukční čáry sama neurčuje indukčnost. L se vztahuje k vázanému toku a proudu
celé smyčky. Pole blízkých prokovů se vážou, nelze proto slíbit přesné L/N ani
bezpodmínečnou převahu libovolné skupiny malých prokovů nad libovolným velkým.
Nižší L snižuje induktivní složku impedance při dané frekvenci, nikoli nutně
celkovou impedanci rezonanční napájecí sítě ve všech frekvencích.

## Převzaté ukázky konfigurací prokovů

15. Steve Arar: Via Configurations for Connecting Decoupling Capacitors,
    All About Circuits, 7. 10. 2019:
    https://www.allaboutcircuits.com/technical-articles/different-via-configurations-for-connecting-decoupling-capacitors/
    U všech tří použitých obrázků článek uvádí původ z knihy Henry W. Ott:
    Electromagnetic Compatibility Engineering, Wiley. Tato původní atribuce
    je zachována na slajdech i v závěrečném seznamu.

Staženo 19. 10. 2026; obrázky jsou uloženy beze změn obsahu:

- `aac_decoupling_fig1.jpg` – obr. 1, prokovy na koncích plošek:
  https://www.allaboutcircuits.com/uploads/articles/different-via-configurations-for-connecting-decoupling-capacitors-Mahdi_AAC_image1.jpg
- `aac_decoupling_fig4.jpg` – obr. 4, dvojice PWR/GND prokovů blíže k sobě:
  https://www.allaboutcircuits.com/uploads/articles/different-via-configurations-for-connecting-decoupling-capacitors-Mahdi_AAC_image4.jpg
- `aac_decoupling_fig5.jpg` – obr. 5, více prokovů na každou plošku:
  https://www.allaboutcircuits.com/uploads/articles/different-via-configurations-for-connecting-decoupling-capacitors-Mahdi_AAC_image5.jpg

U obrázků jsou jen krátké české komentáře. Hodnoty indukčnosti uvedené přímo
v obrázcích jsou označeny za příklady, nikoli návrhové hodnoty pro tuto prezentaci.
Plná bibliografie je nyní na posledních čtyřech slajdech.
