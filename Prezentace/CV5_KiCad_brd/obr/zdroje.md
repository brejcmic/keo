# Zdroje obrázků

## Kontrola pravidel návrhu (DRC)

KiCad Documentation Contributors, dokumentace KiCad 10 (CC BY 3.0 nebo GPL 3.0 a novější):

- `drc_icon.png`: https://docs.kicad.org/10.0/en/pcbnew/images/icons/erc_24.png
  (ikona používaná také kontrolou DRC v PCB Editoru).
- `drc_control.png`: https://docs.kicad.org/10.0/en/pcbnew/images/drc_control.png
  (anglické okno před spuštěním kontroly, připravené k pozdější náhradě českým snímkem).

Postup a absence výchozí zkratky ověřeny v PCB Editor 10,
Design rules checking a Actions reference.

## Nepájivá maska a popisky

Na slajdu Potisk pouzdra a reference je použit výřez `board_outline.png`
z dokumentace Getting Started in KiCad 10 (zdroj níže v části ohraničení DPS).
Výřez rezistoru R1 doplněn šipkami a českými popisky v LaTeXu.

KiCad Documentation Contributors, dokumentace KiCad 10 (CC BY 3.0 nebo GPL 3.0 a novější):

- `selection_filter.png`: https://docs.kicad.org/10.0/en/pcbnew/images/selection_filter.png
  (výchozí stav panelu, nikoli nastavení jen pro text).
- `footprint_field.png`: https://docs.kicad.org/10.0/en/pcbnew/images/footprint_field.png
  (pole hodnoty ve vrstvě F.Fab; na slajdu vysvětleno nastavení pro referenci a potisk).

Postupy ověřeny v PCB Editor 10: Solder mask/paste, Editing shape properties,
Editing footprint fields, Selection and the selection filter a Pad properties.

## Ikony zón a ohraničení DPS

KiCad Documentation Contributors, dokumentace KiCad 10 (CC BY 3.0 nebo GPL 3.0 a novější).
Ikony v `https://docs.kicad.org/10.0/en/pcbnew/images/icons/`:

- `add_zone_24.png` -- vytvoření měděné zóny,
- `show_zone_24.png` -- zobrazení výplní,
- `show_zone_disable_24.png` -- pouze obrysy,
- `add_keepout_area_24.png` -- oblast pravidel,
- `add_rectangle_24.png`, `add_line_24.png`, `add_arc_24.png` -- grafické kreslení obrysu.

Ilustrace obrysu:

- `board_outline.png`: https://docs.kicad.org/10.0/en/getting_started_in_kicad/images/board-outline.png
- `select_edge_cuts.png`: https://docs.kicad.org/10.0/en/getting_started_in_kicad/images/select-edge-cuts.png

Postupy: PCB Editor 10, Board outlines (Edge Cuts), Placement and drawing operations,
a Getting Started in KiCad 10, Drawing a board outline.

## Rozlitá měď a Správce zón

KiCad Documentation Contributors, dokumentace KiCad 10 (CC BY 3.0 nebo GPL 3.0 a novější):

- `zone_properties.png`: https://docs.kicad.org/10.0/en/pcbnew/images/zone_properties.png
- `zone_manager.png`: https://docs.kicad.org/10.0/en/pcbnew/images/zone_manager.png
- `zone_outline.png`: https://docs.kicad.org/10.0/en/getting_started_in_kicad/images/zone-outline.png
- `zone_filled.png`: https://docs.kicad.org/10.0/en/getting_started_in_kicad/images/zone-filled.png
  (na slajdu o připojení plošek použit také výřez tepelného můstku).

Postupy ověřeny v PCB Editor 10, Working with zones / Zone manager:
https://docs.kicad.org/10.0/en/pcbnew/pcbnew.html#working-with-zones
Uživatel nahradil `zone_properties.png` a `zone_manager.png` českými snímky
své instalace KiCadu. Výše uvedené odkazy u těchto souborů označují původní
nahrazené ilustrace; ostatní snímky zón nadále pocházejí z dokumentace.

Snímky pořízeny 17. 10. 2026 z místní české instalace KiCad 10.0,
Editor DPS, projekt `KiCad_prj/pwm_generator/pwm_generator.kicad_pro`.
Zachycují skutečné hodnoty otevřeného projektu; nejde o ukázku aplikovaných
pravidel JLCPCB. Nastavení bylo po snímání zavřeno bez potvrzení změn.

Následující soubory nahrazují původní anglické obrázky z dokumentace:

- board_setup_physical_stackup.png
- board_setup_board_editor_layers.png
- board_setup_constraints.png
- board_setup_netclasses.png
- board_setup_predefined_sizes.png

Referenční dokumentace: https://docs.kicad.org/10.0/en/pcbnew/pcbnew.html

## Nastavení desky

- `options_board.png`: oficiální ikona Nastavení desky z dokumentace KiCad 10:
  https://docs.kicad.org/10.0/en/pcbnew/images/icons/options_board.png

## Aktualizace DPS ze schématu

- `update_pcb_from_schematic_cs.png`: skutečný snímek českého aktualizačního
  dialogu v projektu `pwm_generator`, 17. 10. 2026. Aktualizace nebyla provedena.
- `update_pcb_from_schematic_icon.png`: výřez ikony z horní lišty stejné instalace.

Ikona KiCadu: KiCad Developers, grafické prvky aplikace KiCad.
Význam voleb ověřen v dokumentaci KiCad 10, část Update PCB From Schematic.

## Rozmisťování pouzder, mřížka a jednotky

Oficiální ikony z dokumentace KiCad 10:

- `grid_24.png`: https://docs.kicad.org/10.0/en/pcbnew/images/icons/grid_24.png
- `unit_mm_24.png`: https://docs.kicad.org/10.0/en/pcbnew/images/icons/unit_mm_24.png
- `unit_mil_24.png`: https://docs.kicad.org/10.0/en/pcbnew/images/icons/unit_mil_24.png
- `unit_inch_24.png`: https://docs.kicad.org/10.0/en/pcbnew/images/icons/unit_inch_24.png

Popis příkazů a klávesových zkratek ověřen v dokumentaci KiCad 10,
části Placing and moving footprints, Grid settings a Actions reference.

## Propojování trasami

- `routing_complete.png`: KiCad Documentation Contributors, Getting Started in KiCad 10,
  https://docs.kicad.org/10.0/en/getting_started_in_kicad/images/routing-complete.png
  (v prezentaci zobrazen výřez kolem přechodu B.Cu -- prokov -- F.Cu;
  dokumentace pod licencí CC BY 3.0 nebo GPL 3.0 a novější).

Obrázky z oficiální dokumentace KiCad 10:

- `add_tracks_24.png`: https://docs.kicad.org/10.0/en/pcbnew/images/icons/add_tracks_24.png
- `track_corner_mode_45deg.png`: https://docs.kicad.org/10.0/en/pcbnew/images/track_corner_mode_45deg.png
- `Pcbnew_layer_pair_dialog.png`: https://docs.kicad.org/10.0/en/pcbnew/images/Pcbnew_layer_pair_dialog.png

Řez typy prokovů:

- `via_types.png`: M adler, Cmglee, Wikimedia Commons, licence CC BY 3.0 / GFDL:
  https://commons.wikimedia.org/wiki/File:Via_Types.svg

Postup a zkratky ověřeny v dokumentaci KiCad 10, část Routing tracks and vias.
