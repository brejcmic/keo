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

- `slot_crossing_cap.tex` / `.pdf`: doplněno 20. 10. 2026; vlastní varianta
  stejného křížení s kondenzátorem na F.Cu mezi dvěma GND prokovy.
  Značka C zdůrazňuje kapacitní vazbu, nejde o výrobní rozměry pouzdra.
  C ani jeho přípoje se nedotýkají signálu či cizí spodní trasy.
  Obě strany patří stejné GND, DC propojené mimo křížení; C pouze zkracuje
  vysokofrekvenční návrat. Nenahrazuje DC propojení ani souvislou referenci.
  Pro tutéž GND je zpravidla vhodnější přímý vodivý můstek.
  Princip kapacitního propojení referencí: [7] Art Kay, PCB Trace as a Wave Guide
  (ověřeno 20. 10. 2026 na https://www.ti.com/video/6307562268112).
  Omezení slotů a parazitní impedance C: [10], části 1.6 a 2.4.
  Jde o vlastní aplikaci principů na předchozí dvouvrstvý příklad,
  nikoli překreslení konkrétního obrázku TI. Kapacita není univerzálně předepsaná.

Překlad všech pěti samostatných příkladů pomocí pdflatex ve složce
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

## Spínané měniče – spínací uzel SWN (20. 10. 2026)

16. Texas Instruments: Layout Optimization of 4-Switch Buck-Boost Converters,
    SLVAFJ3, září 2023, části 2.1–2.2 a 2.5:
    https://www.ti.com/lit/an/slvafj3/slvafj3.pdf
    Malá plocha uzlů s vysokým dv/dt, malé komutační smyčky, odstup citlivých
    signálů. Použity obecné principy pro jednoduchý buck, nikoli převzatý layout
    LM5177 ani obecný pokyn dělit AGND/PGND.
17. Texas Instruments: How to Correctly Layout a 40A Power Supply: Copper,
    Vias and Loop Path, SSZT978, 2017:
    https://www.ti.com/document-viewer/lit/html/SSZT978/GUID-8C25D4C0-B783-4E3A-9E0C-8DE1DFBC7851
    Plocha mědi musí respektovat vodivé ztráty a chlazení; minimalizace SWN
    proto neznamená libovolně úzké propojení. Dále použit zdroj [12].

Ověřeno 20. 10. 2026. Vlastní editovatelné ilustrace:

- `buck_switch_node.tex` / `.pdf`: funkční schéma synchronního bucku;
  QH a QL jsou bloky spínačů bez řízení, červeně je společný uzel SWN.
  Nejde o kompletní schéma k výrobě. U nesynchronního bucku do SWN patří
  katoda volnoběžné diody místo horního vývodu QL.
- `buck_sw_layout.tex` / `.pdf`: srovnání zbytečně velkého polygonu SWN
  a kompaktního propojení pinu SWN s tlumivkou. Obecný IC nemá reálný pinout;
  vstupní kondenzátor a další součástky nejsou v tomto detailu zakreslené.
  Modrá citlivá trasa je nezávislý signál, nikoli schéma zapojení FB.

Obrázky přeložit samostatně ve složce `obr` pomocí pdflatex.
Příklad 12 V / 3 ns a 2 pF je vlastní ilustrační výpočet, nikoli údaj výrobce.
Podmínky keepoutu pod SWN nejsou zobecněné: postupovat podle konkrétního
datasheetu a vzorové desky. Bibliografie zůstává na posledních pěti slajdech,
stávající číslování 1–15 je zachované.

## Zatížitelnost tras, prokovů a necking (20. 10. 2026)

18. IPC: IPC-2152: Standard for Determining Current Carrying Capacity in
    Printed Board Design, srpen 2009:
    https://www.ipc.org/TOC/IPC-2152.pdf
    Veřejný obsah a úvod standardu, nikoli celý text. Použito vymezení návrhu
    vodičů podle proudu a dovoleného oteplení; nejsou převzaté grafy či tabulky
    z placené normy ani vymyšlené univerzální proudové limity.
19. KiCad 10.0: Calculator Tools, Track Width a Via Size:
    https://docs.kicad.org/10.0/en/pcb_calculator/pcb_calculator.html
    Studenti mají pro návrh šířky použít dostupný kalkulátor KiCadu
    s jednodušším modelem podle IPC-2221. IPC-2152 je zmíněna pouze jako
    podrobnější popis, přístup k celé normě se nevyžaduje. Dokumentace verze 10
    uvádí u šířky IPC-2221; tvrzení se nevztahuje na budoucí vývojovou větev.
    Obrázky GUI nejsou převzaté.
20. Texas Instruments: Best Practices for Board Layout of Motor Drivers,
    SLVA959B, rev. B, říjen 2021, část 3:
    https://www.ti.com/lit/an/slva959b/slva959b.pdf
    Nízký odpor přechodu, skupiny prokovů a jejich přímé připojení k mědi.
    Číselné proudové limity tabulky 3-1 nejsou zobecněny na libovolné prokovy.
21. Texas Instruments: AN-1772 LM3691 Evaluation Board, SNVA312B, rev. B,
    květen 2013, část 7:
    https://www.ti.com/lit/ug/snva312b/snva312b.pdf
    Výrobcův příklad místní změny šířky u plošky. Konkrétní rozměry a doporučení
    pro pájení daného pouzdra nejsou vydávány za univerzální návrh neckingu.

Ověřeno 20. 10. 2026. Vlastní editovatelné ilustrace:

- `current_necking.tex` / `.pdf`: porovnání dlouhého zúžení s krátkým neckingem
  u malé plošky, obecný IC bez reálného pinoutu, bez výrobních rozměrů.
- `current_via_array.tex` / `.pdf`: stejná skupina čtyř prokovů, přívod úzkým
  společným hrdlem nebo širokou mědí. Cílová vrstva není zobrazena; také musí
  mít dostatečný přívod/odběr a vhodné chlazení.

Přeložit samostatně pomocí pdflatex ve složce `obr`.
Odporové příklady jsou vlastní výpočty pro měď s rezistivitou
0,0172 ohm mm²/m přibližně při 20 °C. Trasy: R = rho l/(w t).
Prokov: rovnoměrná homogenní stěna s hotovým vnitřním průměrem d,
tloušťkou pokovení tp, A = pi (d + tp) tp. Pokovení 25 µm je jen vstup
příkladu; nejde o parametr odvozený z velikosti 0,60/0,30 mm.
Model nezahrnuje odpor přívodů, rozložení proudové hustoty ani teplotní pole.
Necking stejného průřezu o délce 5 mm má 10× větší celkovou ztrátu než
0,5 mm, nikoli automaticky 10× větší teplotu. Oteplení nebylo simulováno.
R/N pro stejné prokovy je ideální elektrický model; povolený proud skupiny
není automaticky Nnásobek jednotlivého prokovu. Celá bibliografie je nyní
na posledních šesti slajdech; čísla zdrojů 1–17 zůstávají zachovaná.
