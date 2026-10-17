# Kontext práce – prezentace KiCad

Aktualizováno: 17. 10. 2026

## Účel

Tento soubor slouží k navázání na tvorbu výukových prezentací pro předmět Konstrukce a realizace elektronických obvodů. Aktuálně se rozpracovává prezentace **Návrh DPS v KiCad**, věnovaná PCB Editoru v KiCad 10. Další obsah zadá uživatel při pokračování.

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

## Rozpracovaná prezentace o PCB Editoru

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

Pro aktuální prezentaci použít `kicadBrd.tex` ve složce `Prezentace/CV5_KiCad_brd`.
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
