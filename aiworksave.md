# Kontext práce – prezentace KiCad

Aktualizováno: 12. 10. 2026

## Účel

Tento soubor slouží k navázání na tvorbu výukových prezentací pro předmět Konstrukce a realizace elektronických obvodů. Příští pokračování má být nová prezentace věnovaná **PCB Editoru v KiCad 10**.

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
- Pokud je to možné, přebírat obrázky z oficiální dokumentace KiCad 10.

## Zdroj informací

Primární dokumentace:

- KiCad 10 – hlavní dokumentace: <https://docs.kicad.org/10.0/en/kicad/kicad.html>
- KiCad 10 – Schematic Editor: <https://docs.kicad.org/10.0/en/eeschema/eeschema.html>
- Pro novou prezentaci použít dokumentaci PCB Editoru KiCad 10: <https://docs.kicad.org/10.0/en/pcbnew/pcbnew.html>

Při přebírání obrázků z webu ukládat lokální kopii do `obr`; prezentace nemá záviset na vzdálených URL.

## Doporučený začátek nové prezentace o PCB Editoru

Novou prezentaci zatím nebylo potřeba zakládat. Před vytvořením ověřit s uživatelem její požadovaný název a cílovou složku; pravděpodobně půjde o následující cvičení po `CV4_KiCad_sch`.

Jako šablonu lze použít preambuli a titulní slajdy z `CV4_KiCad_sch/kicadSch.tex`. Zachovat autora, předmět, rok, vzhled a způsob členění. Změnit titul a krátký název na PCB Editor.

Možná osnova pro první domluvu:

1. přenos schématu do PCB Editoru,
2. nastavení desky a návrhových pravidel,
3. obrys desky,
4. rozmístění součástek,
5. routování a prokovy,
6. měděné zóny,
7. DRC,
8. 3D kontrola,
9. výrobní data Gerber a vrtání.

Osnovu neuplatňovat automaticky; další konkrétní obsah určí uživatel.

## Technický pracovní postup

Překlad prezentace provádět ve složce prezentace:

```powershell
pdflatex -interaction=nonstopmode -halt-on-error nazev.tex
pdflatex -interaction=nonstopmode -halt-on-error nazev.tex
```

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
