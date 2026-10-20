# Kontext práce – prezentace KiCad

Aktualizováno: 20. 10. 2026 – konec dne, kontext pro příští pokračování.

## Účel

Tento soubor slouží k navázání na tvorbu výukových prezentací pro předmět Konstrukce a realizace elektronických obvodů. Aktuálně se rozpracovává **CV6 – Základní pravidla návrhu DPS**. CV5 o PCB Editoru KiCad 10 uživatel označil za hotovou; bez nového zadání do ní nezasahovat. Další obsah CV6 zadá uživatel při pokračování, nic není rozpracované ani čekající na doplnění.

## Aktuální práce: CV6 – Základní pravidla návrhu DPS

- Složka: `Prezentace/CV6_Pravidla_navrhu/`.
- Zdroj: `Pravidla_navrhu.tex`, výsledek: `Pravidla_navrhu.pdf`.
- Aktuální rozsah při uložení kontextu: **67 stran/slajdů** (ověřeno z aktuálního PDF i logu). Před posledními uživatelovými úpravami měla prezentace 66 slajdů; vždy vycházet z aktuálního souboru, ne ze starších čísel v konverzaci.
- Nové slajdy a ilustrace byly vizuálně zkontrolovány. Po poslední opravě překlad dvakrát úspěšně prošel; při uložení kontextu je aktuální LaTeX log také bez chyb, varování a přetečení.
- Aktuální pořadí sekcí: **Fyzická skladba DPS**, **Přerušení zpětné cesty**, **Zónování DPS**, **Trasy napájení**, **Spínané měniče napětí**, **Zatížitelnost tras**, **Referenční zdroje**. Zónování je výslovně na přání uživatele před trasami napájení. Další sekce/podsekce nevymýšlet bez zadání.
- Ponechány autor Michal Brejcha, předmět, rok 2026 a vzhled AnnArbor/crane.

### Dosavadní obsah CV6

1. Stackup: dvouvrstvá `(SIG + PWR) / GND`, čtyřvrstvá `SIG / GND / PWR / SIG` a `(SIG + PWR) / GND / GND / (SIG + PWR)`, princip, výhody/nevýhody, blízkost referencí, tloušťky dielektrika a výběr skladby.
2. Návratový proud při přechodu vrstev: GND–GND přes blízký GND prokov, GND–PWR přes kapacitní vazbu. Kondenzátor je mezi PWR a GND, ne v sérii se signálem; GND a PWR se nesmějí spojit přímo.
3. Vlastní schématické řezy, vlastní barevné exporty malých výukových desek z KiCadu 10 a uživatelem dodané obrázky TI s bočním i horním pohledem.
4. Funkční sloty: spojené izolační odstupy cizích průchozích plošek konektoru a křížící spodní trasa v GND dvouvrstvé DPS. Obrázky problému i zlepšení: vedení signálu nad souvislou GND, případně krátký GND můstek se dvěma prokovy jako kompromis.
5. Power routing: široké a krátké přípoje, blokovací kondenzátor u IC, odbočení k IC přímo z jeho napájecí plošky, nevhodné dlouhé T odbočky, filtrační kondenzátor s přívodem a odběrem přímo na ploškách v napájecí i návratové cestě.
6. Zemní ploška kondenzátoru s jedním větším vs. více menšími GND prokovy; paralelní proudové cesty, vliv vzájemné magnetické vazby, induktivní složka impedance. Vlastní srovnávací půdorys.
7. Tři převzaté obrázky z All About Circuits: poloha PWR/GND prokovů a dva/tři prokovy na každé plošce. Za nimi vlastní srovnání GND prokovů a vysvětlení. Starší číslování slajdů 33–36 již neplatí po vložení nových kapitol.
8. Kapacitní můstek jako další kompromis při křížení nad mezerou v GND: C na F.Cu mezi dvěma GND prokovy, VF návrat přes C, DC propojení téže GND zajištěné jinudy. Příklad následuje za vodivým GND můstkem (slajd 27).
9. Celá kapitola **Zónování DPS (PCB partitioning / floor planning)**: definice, tabulka hledisek, postup rozmístění, promíchaný vs. uspořádaný blokový plán, výkon/frekvence, teplotní hlediska a souvislá GND. Osm obsahových slajdů (při doplnění 29–36). Uživatel následně upravil formulace a zkrátil některé bloky – zachovat jeho úpravy.
10. Čtyři obsahové slajdy o **spínacím uzlu SWN**: funkční schéma synchronního bucku, rychlé změny napětí a kapacitní rušení, kompaktní vs. rozlitá měď, rozdíl mezi plochou uzlu s vysokým dv/dt a komutační smyčkou s vysokým di/dt.
11. Šest obsahových slajdů o **zatížitelnosti tras a prokovů a neckingu**: oteplení, efektivní proud, odpor/úbytek/ztráty, kalkulátor KiCad, pokovená stěna prokovu, skupiny prokovů, místní zúžení u plošky a číselný příklad 0,5 vs. 5 mm. Výpočty odporu nejsou automaticky proudové limity.

### Výslovná upřesnění uživatele z 20. 10. – zachovat

- Spínací uzel označovat v celé prezentaci i ve vlastních obrázcích výhradně **SWN**; tak se používá na cvičeních. Nenahrazovat znovu SW, LX nebo PH. Názvy souborů `buck_sw_layout.*` zůstaly beze změny.
- U obrázků **řezů návratových cest** `return_gnd` a `return_cap` ponechat v dolním popisku pouze význam červené a modré barvy. Dodatečné vysvětlivky o antipadech, zkrácených prokovech či směru šipek byly z popisku na přání odstraněné. Vnitřní označení vrstev a prvků obrázku zůstalo. Fyzikální vysvětlení lze ponechat v poznámkách, nevracet je do popisku bez žádosti.
- Studenti nemají přístup k **IPC-2152**. Zmínit pouze, že nabízí podrobnější popis. Pro jejich návrhy výslovně doporučovat **kalkulátor v KiCadu s jednodušším modelem dle IPC-2221**. Nevyžadovat použití či získání celé IPC-2152.
- Uživatel nazývá funkční plánování rozmístění **zónování DPS**. Toto označení používat; nejde o měděné zóny editoru. Sdružovat funkčně související prvky, současně posoudit výkon/proudy, frekvence/rychlost hran, citlivost a teplotu.
- Neinterpretovat tepelná hlediska jako povinnost nahromadit všechny horké součástky. Respektovat odvod tepla, kryt a ochranu přesných obvodů. Čidlo okolní teploty a čidlo sledované součástky mají odlišné požadavky.
- Zónování není automatické dělení zemní reference. Uživatel ve finálních formulacích zdůraznil souvislou GND; zachovat jeho texty. U skutečného galvanického oddělení respektovat příslušnou bariéru a dokumentaci konkrétního obvodu.
- Poslední oprava: uživatel vložil `\vskip{5mm}`, což vyvolalo **Missing number** a **Illegal unit of measure** (Beamer hlásil až `\end{frame}`). Opraveno na **`\vspace{5mm}`** v tabulkovém slajdu zónování, nyní přibližně řádek 400. Nevracet jeho ostatní úpravy. Pro `\vskip` by správně byla dimenze bez složených závorek; pro tuto prezentaci použít `\vspace{5mm}`.

### Důležitá odborná upřesnění, která zachovat

- Funkční slot v této výuce není mechanické frézování, ale přerušení referenční mědi. Průchod mezi piny sám o sobě nemusí být špatně: rozhoduje skutečný tvar naplněné GND a případná úzká hrdla.
- Power routing přes napájecí plošku C je výchozí pravidlo pro jednoduché trasované napájení. Nejde o absolutní příkaz u všech vícevrstvých PDN; přímé prokovy do ploch mohou mít menší indukčnost. Samotný tvar T není chyba, pokud uzel leží přímo na plošce a přípojka k IC je krátká.
- Filtrační/bulk kondenzátor nenahrazuje lokální blokování; u regulátorů a měničů respektovat datasheet, layout a stabilitu.
- Uživatel původně žádal vysvětlení nižší L více prokovů pomocí „delší magnetické indukční čáry“. Formulace byla výslovně zpřesněna: samotná délka čáry neurčuje L, rozhoduje vázaný tok a geometrie celé proudové smyčky. Nevracet se k původnímu nepřesnému tvrzení.
- `L_eq ≈ L_via/N` je označeno jako ideální model bez vzájemné vazby, nikoli zaručený poměr. Nižší L snižuje induktivní složku impedance při stejné frekvenci, ne nutně celkovou impedanci rezonanční sítě všude.
- Číselné indukčnosti v převzatých obrázcích AAC (1,1 / 0,7 / 0,5 / 0,4 nH) jsou jen hodnoty příkladů, ne univerzální návrhové hodnoty.
- Jonesův starší podklad se používá pro blokování, nikoli jako obecný předpis dělit zemní plochy.

### Pravidla citací a obrázků pro CV6

- **Úplná bibliografie vždy až na úplně posledních slajdech.** Obsahové slajdy mají malé číselné odkazy na doporučení (např. `[9, 13]`). Aktuální číslování zdrojů **1–24**; původní čísla zachována. Závěrečné zdrojové slajdy mají titulky `(1/7)` až `(7/7)`.
- **Převzaté obrázky citovat přímo na slajdu**, včetně původní atribuce, pokud ji zdroj uvádí. Vlastní kresby nemají citaci obrázku, pouze malý odkaz na zdroj doporučení.
- Všechny obrázky a editovatelné předlohy ukládat lokálně do `obr/`. Podrobný původ, URL, poznámky a instrukce k regeneraci jsou v `Prezentace/CV6_Pravidla_navrhu/obr/zdroje.md`.
- Preferovány jsou české obrázky, ale existující obrázky nepřekládat/nepřegenerovávat bez vyzvání. Uživatel si některé snímky připravuje sám. Pro nové obrázky použít dokumentaci/web nebo vytvořit vhodná česká vektorová schémata.

### Klíčové podklady a soubory CV6

- `obr/stackup_*.tex` / `.pdf`, společný `stackup_style.tex`: vlastní české řezy skladeb DPS.
- `obr/return_gnd.tex` / `.pdf`, `return_cap.tex` / `.pdf`: vlastní schémata návratové cesty. Přípojné prokovy jsou v řezu zkrácené, aby nevypadaly jako zkrat s projektovanou signálovou trasou; antipad se obtéká mimo rovinu řezu.
- `obr/layout_gnd.kicad_pcb`, `layout_cap.kicad_pcb` (+ projekty), `make_return_layouts.py`: vlastní malé výukové desky, nikoli výrobní návrhy. U1 je obecný model, ne skutečný pinout. Vnitřní plochy jsou v exportech skryté. Python z `C:/Program Files/KiCad/10.0/bin/python.exe` má knihovnu pcbnew.
- `layout_*_full.pdf`: barevná měď z KiCad CLI, `layout_*_labels.pdf`: černobílé anotace; `layout_*.tex` / `.pdf`: složení a výřez exportů.
- `obr/ti_pcb_trace_waveguide.pdf`: lokální podklad Art Kay, TI Precision Labs, PCB Trace as a Wave Guide, zdroj [7].
- `obr/wave_guide_no_vias.png` (snímek 9), `wave_guide_gnd_vias.png` (8), `wave_guide_capacitors.png` (12): uživatelovy printscreeny stejného zdroje, každý s bočním i horním pohledem. Použity beze změny obsahu. Nahradily dřívější slajd s jediným horním výřezem „Přechod reference: výuková ilustrace TI“, který už v prezentaci není.
- `obr/slot_examples.tex` + čtyři `slot_connector_bad/better.tex`, `slot_crossing_bad/better.tex` / `.pdf`: vlastní příklady funkčních slotů.
- `obr/power_examples.tex` + `power_decoupling_bad/better.tex`, `power_filter_bad/better.tex` / `.pdf`: vlastní ilustrace blokování a filtrace, plošky jsou zřetelně nakreslené.
- `obr/power_ground_vias.tex` / `.pdf`: vlastní srovnání jednoho většího a čtyř menších GND prokovů.
- `obr/aac_decoupling_fig1.jpg`, `aac_decoupling_fig4.jpg`, `aac_decoupling_fig5.jpg`: originální převzaté obrázky z https://www.allaboutcircuits.com/technical-articles/different-via-configurations-for-connecting-decoupling-capacitors/ , Steve Arar, 7. 10. 2019, zdroj [15]. Článek u všech uvádí původ **Henry W. Ott: Electromagnetic Compatibility Engineering, Wiley**; tato atribuce je zachována i v prezentaci. Soubory mají přirozeně nízké rozlišení; nebyly překreslovány ani AI upravovány.
- `doc/pcb_tutorial.pdf`: uživatelův podklad David L. Jones, rev. A, 29. 6. 2004. V prezentaci je místo lokální cesty veřejný odkaz https://www.scs.stanford.edu/~zyedidia/docs/pcb/pcb_tutorial.pdf (zdroj [8]).
- Další citace: Peterson/Altium [1–4], Bogatin [5], Phil's Lab stackup [6], Salmony Vias 101 [9], TI SCAA082A [10], Miller TI blokování [11], Lakkas TI layout měniče [12], Kay TI Decoupling Capacitors [13], Murata C39E [14]. Přesné odkazy jsou v TeXu a `obr/zdroje.md`.
- `obr/slot_crossing_cap.tex` / `.pdf`: kapacitní můstek; nová větev `\CrossingExample{2}` v `slot_examples.tex`. Původní vodivý můstek je varianta 1.
- `obr/buck_switch_node.tex` / `.pdf`: vlastní funkční schéma bucku s bloky QH/QL, červeně **SWN**. Pro samostatný překlad potřebuje `amsmath` kvůli `\text` v indexech.
- `obr/buck_sw_layout.tex` / `.pdf`: vlastní půdorys rozlitého vs. kompaktního **SWN** a citlivé trasy. Nejde o reálný pinout. Citlivá modrá trasa se s červenou mědí nespojuje.
- `obr/current_necking.tex` / `.pdf`: dlouhé zúžení vs. krátký necking u malé plošky. `obr/current_via_array.tex` / `.pdf`: skupina čtyř prokovů za společným hrdlem vs. široký přívod.
- `obr/floorplan_examples.tex`: společná kresba blokových plánů, nepřekládat samostatně. `floorplan_bad.tex` / `.pdf` a `floorplan_good.tex` / `.pdf`: promíchané a funkčně uspořádané rozmístění se stejnými hlavními bloky. Šipky jsou funkční vazby, ne konkrétní měděné trasy; barevné oblasti nejsou rozdělené GND plochy.
- Nové zdroje [16–24]: TI SLVAFJ3 (SWN a komutační smyčky), TI SSZT978 (měď, ztráty, chlazení), IPC-2152 (pouze úvod/podrobnější popis), dokumentace kalkulátoru KiCad 10 (IPC-2221), TI SLVA959B (prokovy a výkonové obvody), TI SNVA312B (místní změna šířky), Analog Devices Mixed-Signal PCB Layout (floor planning), TI SNOA967A (teplotní čidla a šíření tepla), Analog Devices Layout for Precision Op Amps (gradienty a termoelektrická napětí). Přesné URL jsou v TeXu a `obr/zdroje.md`.

### Technika a stav při ukončení

- Překládat **CV6**, ne CV5: ve složce `Prezentace/CV6_Pravidla_navrhu` dvakrát `pdflatex -interaction=nonstopmode -halt-on-error Pravidla_navrhu.tex`.
- `\pdfminorversion=7` je záměrně **před** `\documentclass`, protože třída Beamer zavádí PDF obrázky už při načítání. Nastavení až po třídě způsobovalo chybu změny PDF verze.
- V matematických indexech používat např. `L_{\text{eq}}`, `L_{\text{via}}`. Varianta `\mathrm` vyvolala chybějící bitmapový font `ecrm0700`; sans textové indexy fungují bez instalace fontů.
- Po `\begin{frame}[t]{Titulek}` vložit před samostatnou skupinu `{\centering ...}` např. `\small` či `\footnotesize`. Jinak Beamer může obrázkovou skupinu interpretovat jako podtitulek a roztáhnout žlutou hlavičku.
- U samostatných TikZ obrázků spouštět pdflatex ve složce `obr`; společné vstupy `*_examples.tex` nepřekládat samostatně.
- Finální PDF není zamčené. Pokud bude příště otevřené a zápis selže, požádat o zavření a prozatím použít `-jobname=Pravidla_navrhu_preview`; uživatel tento postup zná.
- Síťové `Invoke-WebRequest` v sandboxu zde selhává; úspěšné stažení obrázků proběhlo po standardní eskalaci oprávnění. Nebyly měněny globální konfigurace.
- Dočasné kontrolní PNG byly odstraněny. Neodstraňovat obecně starší/sledované preview soubory z jiných úloh.
- Hlavní PDF je při konci aktuální a poslední překlad šel pod běžným názvem. Dočasné `Pravidla_navrhu_preview.pdf` bylo odstraněno; mohou zůstat ignorované pomocné `Pravidla_navrhu_preview.aux/.log/.nav/.out/.snm/.toc` z dřívějšího zamčení. Nezaměňovat jejich starý log za hlavní aktuální log.
- Při konci jsou změněné CV6 `.tex`, `.pdf`, `obr/zdroje.md`; nové nesledované jsou `obr/floorplan_examples.tex`, `floorplan_bad.tex/.pdf` a `floorplan_good.tex/.pdf`. Dřívější dnešní změny si uživatel mezitím průběžně uložil. **Agent neprovedl git add ani commit**; uživatel změny ukládá sám. Zachovat i jeho souběžné úpravy formulací, sekcí a obrázků.
- Zítřejší další téma zatím nebylo zadáno. Pokračovat až dle nové žádosti.

## CV5 – aktuální stav: hotovo

- `Prezentace/CV5_KiCad_brd/kicadBrd.tex` / `.pdf`, **78 slajdů** (ověřeno z PDF při ukládání kontextu).
- Uživatel výslovně požádal ponechat CV5 jako hotovou. Je dokončena včetně rozmístění součástek, trasování a prokovů, zón a správce zón, hranice DPS, masky, potisku a referencí, DRC i Gerber/vrtacích dat a nastavení JLCPCB.
- Uživatel převedl okna do češtiny a názvy polí byly sladěny se snímky. DRC má vlastní kapitolu; v dřívějších rozpracovaných krocích nemají být předčasné výzvy k provedení DRC.
- Následující starší poznámky o rozsahu 35 slajdů a nedokončeném generování podkladů jsou **historický stav ze 17. 10., nikoli aktuální zadání**.

## Dokončená prezentace o editoru schématu

- Zdroj: `Prezentace/CV4_KiCad_sch/kicadSch.tex`
- Výsledné PDF: `Prezentace/CV4_KiCad_sch/kicadSch.pdf`
- Obrázky: `Prezentace/CV4_KiCad_sch/obr/`
- Aktuální rozsah: 67 slajdů.
- Prezentace je v češtině a používá KiCad 10.0.
- Poslední část popisuje tabulku **Upravit pole symbolů** a export BOM.
- PDF bylo po poslední úpravě úspěšně přeloženo a nové slajdy byly vizuálně zkontrolovány.

Pokrytá témata:

1. založení nového projektu,
2. globální a projektové knihovny symbolů a pouzder,
3. význam souborů `sym-lib-table` a `fp-lib-table`,
4. nastavení schématu, třídy spojů a textové proměnné,
5. vyplnění razítka a význam číslování revizí,
6. přidávání symbolů včetně vícedílných součástek,
7. vodiče, popisky, sběrnice a aliasy sběrnic,
8. lokální, globální a hierarchické popisky včetně napájecích symbolů,
9. hierarchické listy a jejich vstupy a výstupy,
10. ERC a použití `PWR_FLG`,
11. přečíslování referencí,
12. přiřazení a kontrola pouzder,
13. úprava polí symbolů, vlastní nákupní pole, seskupování a export BOM do CSV.

## Styl prezentací

- LaTeX Beamer, téma `AnnArbor`, barevné téma `crane`.
- Český text v UTF-8.
- Titulky záložek PDF bez diakritiky řešit pomocí `\texorpdfstring`.
- Položky prostředí `description` jsou záměrně tučné díky:

  ```latex
  \setbeamerfont{description item}{series=\bfseries}
  ```

- Slajdy mají být jednoduchým praktickým návodem, bez zbytečně podrobného teoretického výkladu.
- Preferovat krátké kroky, `enumerate`, `itemize`, `description` a stručné bloky s upozorněním.
- U postupů uvádět ikonu nebo nabídku i klávesovou zkratku, pokud existuje.
- Snímky oken obvykle umístit do pravého sloupce a stručný postup do levého.
- Obrázky vždy ukládat do podsložky `obr` příslušné prezentace a odkazovat relativně, např. `obr/nazev.png`.
- Preferovat skutečné české snímky z uživatelovy instalace KiCad 10 a projektu `pwm_generator`; oficiální dokumentaci používat k ověření funkcí a jako náhradní zdroj obrázků.
- Obrázek použitý z CV4 nejprve překopírovat do `CV5_KiCad_brd/obr`; nikdy neodkazovat do původní složky CV4.
- Zachovat uživatelovo odsazování a komentářové předěly `%------------------------------------------------------------------------------` mezi slajdy.
- Uživatel si chce sám vytvářet členění pomocí sekcí a podsekcí. Bez zadání další `\section` a `\subsection` nepřidávat; používat připravená místa.

## Zdroj informací

Primární dokumentace:

- KiCad 10 – hlavní dokumentace: <https://docs.kicad.org/10.0/en/kicad/kicad.html>
- KiCad 10 – Schematic Editor: <https://docs.kicad.org/10.0/en/eeschema/eeschema.html>
- Pro novou prezentaci použít dokumentaci PCB Editoru KiCad 10: <https://docs.kicad.org/10.0/en/pcbnew/pcbnew.html>

Při přebírání obrázků z webu ukládat lokální kopii do `obr`; prezentace nemá záviset na vzdálených URL.

## Historické poznámky k PCB Editoru (17. 10., překonané aktuálním stavem CV5 výše)

- Složka: `Prezentace/CV5_KiCad_brd/`.
- Zdroj: `Prezentace/CV5_KiCad_brd/kicadBrd.tex`.
- PDF: `Prezentace/CV5_KiCad_brd/kicadBrd.pdf`.
- Uživatel zdroj přejmenoval z `kicadSch.tex` na `kicadBrd.tex`; používat nový název.
- Aktuální rozsah: **35 slajdů**. Poslední verze byla dvakrát přeložena a nové slajdy vizuálně zkontrolovány. Bez chyb LaTeXu a přetečení obsahu.
- Zachovány autor, předmět, rok a vzhled CV4.

Dosavadní obsah:

1. otevření Editoru DPS a Nastavení desky,
2. stručný přehled jednotlivých stránek nastavení,
3. podrobně Fyzická struktura, vrstvy editoru, omezení, třídy spojů a předdefinované velikosti (v tomto pořadí),
4. pravidla JLCPCB pro levné 2vrstvé a 4vrstvé FR4 desky do 100 × 100 mm (slajdy 19–21),
5. aktualizace DPS ze schématu (slajdy **28–34**).

### Aktualizace DPS ze schématu – poslední dokončená část

Slajdy pokrývají přípravu schématu (reference, pouzdra, ERC, uložení), příkaz Nástroje → Aktualizovat DPS ze schématu, **F8**, ikonu, celé české aktualizační okno a vysvětlení jeho voleb:

- opětovné propojení podle referencí versus běžné propojení pomocí identifikátorů,
- skupiny a návrhové bloky,
- nahrazení pouzder, mazání pouzder bez symbolů a přepsání zámků,
- aktualizace a odstranění polí,
- výpis plánovaných změn, filtry zpráv a export zprávy,
- rozdíl tlačítek Aktualizovat DPS a Zavřít,
- rozmístění nových pouzder a kontrola spojů po přenosu,
- alternativa pomocí exportu/importu netlistu `*.net`; v jednom projektu preferovat přímý přenos F8.

Na konci zdroje zůstává uživatelem připravená sekce **Generování výrobních podkladů**, zatím bez obsahových slajdů. Následující téma není dohodnuté; nevytvářet další obsah automaticky.

### Pravidla JLCPCB

Zadání: vyhnout se příplatkovým technologiím, nejlevnější běžná 2vrstvá nebo 4vrstvá deska do 100 × 100 mm. Na slajdech jsou záměrně konzervativní školní hodnoty, nikoli absolutní technologická minima:

- šířka a odstup mědi 0,15 mm; běžná šířka spoje 0,25 mm nebo větší,
- prokov 0,60/0,30 mm (vnější průměr / vrtání), mezikruží 0,15 mm,
- měď od frézovaného okraje 0,30 mm, od cizího otvoru 0,35 mm,
- odstup hran vrtání 0,50 mm,
- pro vývodové součástky mezikruží alespoň 0,25 mm (odlišit od prokovů),
- potisk: výška 1 mm, tah 0,15 mm, odstup od plošek 0,15 mm,
- FR4, 1,6 mm, zelená maska, bílý potisk, vnější měď 1 oz, u 4 vrstev vnitřní 0,5 oz, levná varianta HASL,
- jeden návrh, samostatná deska, typicky 5 kusů; bez panelizace, ENIG, pokovení hran, slepých prokovů, výplní a expresní výroby,
- hustota vrtání nejvýše 150 000/m², tedy 1 500 otvorů na 100 × 100 mm.

Důležitá nuance: vrtání **0,20 mm není vždy příplatkové**. JLCPCB u vícevrstvých desek připouští bez příplatku 0,20 mm při vnějším průměru prokovu alespoň 0,45 mm. Vrtání 0,15 mm je příplatkové. Pro společné školní nastavení zůstalo 0,30 mm. Aktuální cenu je nutné ověřit v kalkulátoru; pevná akční cena není slíbena.

Ověřené zdroje (17. 10. 2026):

- https://jlcpcb.com/capabilities/pcb-capabilities
- https://jlcpcb.com/help/article/in-what-cases-will-there-be-charged-extra
- https://cart.jlcpcb.com/quote

### České snímky a místní KiCad

V `CV5_KiCad_brd/obr` byly všechny původní anglické obrázky nahrazeny skutečnými českými snímky z otevřeného projektu `KiCad_prj/pwm_generator/pwm_generator.kicad_pro`:

- `board_setup_physical_stackup.png`,
- `board_setup_board_editor_layers.png`,
- `board_setup_constraints.png`,
- `board_setup_netclasses.png`,
- `board_setup_predefined_sizes.png`,
- `update_pcb_from_schematic_cs.png` (nový aktualizační dialog),
- `update_pcb_from_schematic_icon.png` (výřez ikony přímo z lišty instalace).

Původ a poznámky jsou v `obr/zdroje.md`. Snímky nastavení ukazují skutečné hodnoty projektu, nikoli aplikovaná doporučení JLCPCB. Projekt se kvůli snímkům nemá měnit; aktualizace DPS nebyla provedena a dialogy byly zavřeny.

Ovládání GUI je možné přes PowerShell mimo sandbox (vyžaduje eskalaci), Win32 a UI Automation. Proces se může jmenovat `kicad`, přestože okno je Editor DPS; PID a handle vždy zjistit znovu. Okna aktivovat pomocí `WScript.Shell.AppActivate` a `SetForegroundWindow`. Pro samotný dialog najít jeho handle přes UI Automation a snímat jeho viditelné hranice pomocí `DwmGetWindowAttribute` (atribut 9) a `System.Drawing.Graphics.CopyFromScreen`. Nevkládat do obrázků okolní plochu. Windows PowerShell může skripty UTF-8 bez BOM číst chybně; české názvy ve skriptech ošetřit. Dočasné snímací skripty byly po použití odstraněny.

## Technický pracovní postup

Překlad prezentace provádět ve složce prezentace:

```powershell
pdflatex -interaction=nonstopmode -halt-on-error nazev.tex
pdflatex -interaction=nonstopmode -halt-on-error nazev.tex
```

Pro aktuální práci použít `Pravidla_navrhu.tex` ve složce `Prezentace/CV6_Pravidla_navrhu`; CV5 je hotová. Následující příklad uzamčení PDF pochází z práce na CV5.
Pokud je PDF otevřené v prohlížeči, může být uzamčené a překlad hlásí `I can't write on file kicadBrd.pdf`. Požádat uživatele o zavření náhledu; mezitím lze přeložit s `-jobname=kicadBrd_preview` a zkontrolovat výsledek. Po uvolnění přeložit běžný název a dočasné soubory odstranit. Dnes se toto vyřešilo a finální PDF je aktuální.

Po překladu zkontrolovat log alespoň na:

- `LaTeX Error`,
- `Undefined control sequence`,
- `Overfull \vbox`,
- `Fatal error`.

Nové slajdy je vhodné převést pomocí `pdftoppm` do dočasných PNG a vizuálně zkontrolovat. Dočasné náhledy poté odstranit. MiKTeX v tomto prostředí někdy vypisuje neškodné chyby zápisu vlastního logu `log4cxx`; rozhodující je návratový kód, vznik PDF a LaTeX log.

## Pravidla práce v repozitáři

- Zachovat uživatelovy existující změny a neupravovat nesouvisející soubory.
- Pro ruční změny souborů používat patch.
- Před úpravami nejprve prohlédnout existující prezentaci a případné lokální konvence.
- Zdroj i PDF po změně aktualizovat.
- V odpovědi stručně uvést, které slajdy přibyly, zda překlad proběhl a kde jsou zdroj a PDF.
