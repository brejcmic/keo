<Qucs Schematic 24.3.2>
<Properties>
  <View=-889,-50,1587,756,1.21,800,0>
  <Grid=10,10,1>
  <DataSet=tr_simulace_Zeven.dat>
  <DataDisplay=tr_simulace_Zeven.dpl>
  <OpenDisplay=0>
  <Script=tr_simulace_Zeven.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Název>
  <FrameText1=Nakresleno:>
  <FrameText2=Datum:>
  <FrameText3=Verze:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 100 560 0 0 0 0>
  <VProbe volt_out1 1 530 310 28 -31 0 0>
  <GND * 1 540 330 0 0 0 0>
  <VProbe volt_in1 1 350 310 28 -31 0 0>
  <GND * 1 360 330 0 0 0 0>
  <VProbe volt_out2 1 530 620 28 -16 1 0>
  <GND * 1 540 600 0 -16 1 0>
  <VProbe volt_in2 1 350 620 28 -16 1 0>
  <GND * 1 360 600 0 -16 1 0>
  <.TR TR1 1 100 620 0 68 0 0 "lin" 1 "0" 1 "50 ns" 1 "1000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <GND * 1 730 560 0 0 0 0>
  <Vpulse V1 1 100 500 18 -26 0 1 "0 V" 1 "5 V" 1 "10 ns" 1 "4000 ns" 0 "2 ns" 1 "2 ns" 0>
  <R R1 1 250 410 -26 15 0 0 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 250 470 -26 15 0 0 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Sub SUB1 1 430 460 -26 48 0 0 "D:/002_GitExt/GR008_SKOLA/keo/Simulace/qucs_vedeni_diff_prj/VEDENI_DIFF.sch" 0 "100" 1 "50" 1 "40e-12" 1 "20e-12" 1 "2" 1>
  <R R4 1 660 410 -26 15 0 0 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 660 470 -26 15 0 0 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <100 530 100 560 "" 0 0 0 "">
  <100 470 220 470 "" 0 0 0 "">
  <280 470 340 470 "" 0 0 0 "">
  <340 470 380 470 "" 0 0 0 "">
  <340 470 340 600 "" 0 0 0 "">
  <480 470 520 470 "" 0 0 0 "">
  <520 470 520 600 "" 0 0 0 "">
  <520 470 630 470 "" 0 0 0 "">
  <730 470 730 560 "" 0 0 0 "">
  <690 470 730 470 "" 0 0 0 "">
  <730 410 730 470 "" 0 0 0 "">
  <520 330 520 410 "" 0 0 0 "">
  <480 410 480 450 "" 0 0 0 "">
  <480 410 520 410 "" 0 0 0 "">
  <520 410 630 410 "" 0 0 0 "">
  <690 410 730 410 "" 0 0 0 "">
  <380 410 380 450 "" 0 0 0 "">
  <340 330 340 410 "" 0 0 0 "">
  <100 410 100 470 "" 0 0 0 "">
  <100 410 220 410 "" 0 0 0 "">
  <280 410 340 410 "" 0 0 0 "">
  <340 410 380 410 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 100 232 638 232 3 #c0c0c0 1 00 1 0 5e-09 5e-08 1 -0.255592 1 3 1 -1 0.5 1 315 0 225 1 0 0 "time" "" "">
	<"ngspice/tran.v(volt_in1)" #0000ff 0 3 0 0 0>
	<"ngspice/tran.v(volt_out1)" #ff0000 0 3 0 0 0>
	<"ngspice/tran.v(volt_in2)" #ff00ff 0 3 0 0 0>
	<"ngspice/tran.v(volt_out2)" #00ff00 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
