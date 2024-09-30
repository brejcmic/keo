<Qucs Schematic 24.3.0>
<Properties>
  <View=-325,-11,995,672,1.27818,100,0>
  <Grid=10,10,1>
  <DataSet=tr_simulace.dat>
  <DataDisplay=tr_simulace.dpl>
  <OpenDisplay=0>
  <Script=tr_simulace.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Název>
  <FrameText1=Nakresleno:>
  <FrameText2=Datum:>
  <FrameText3=Verze:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 450 440 0 0 0 0>
  <VProbe volt_out 1 390 290 28 -31 0 0>
  <GND * 1 400 310 0 0 0 0>
  <VProbe volt_in 1 210 290 28 -31 0 0>
  <GND * 1 220 310 0 0 0 0>
  <GND * 1 30 440 0 0 0 0>
  <Sub VEDENI1 1 310 380 -26 28 0 0 "VEDENI.sch" 0 "50" 1 "50e-12" 1 "2" 1>
  <.TR TR1 1 30 480 0 68 0 0 "lin" 1 "0" 1 "50 ns" 1 "1000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vpulse V1 1 30 410 18 -26 0 1 "0 V" 1 "5 V" 1 "10 ns" 1 "4000 ns" 0 "4 ns" 1 "4 ns" 0>
  <R R1 1 150 380 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 450 410 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <30 380 120 380 "" 0 0 0 "">
  <380 310 380 380 "" 0 0 0 "">
  <180 380 200 380 "" 0 0 0 "">
  <200 310 200 380 "" 0 0 0 "">
  <360 380 380 380 "" 0 0 0 "">
  <200 380 260 380 "" 0 0 0 "">
  <380 380 450 380 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 30 192 450 182 3 #c0c0c0 1 00 1 0 2e-08 1e-07 1 -0.505926 2 6 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(volt_in)" #0000ff 0 3 0 0 0>
	<"ngspice/tran.v(volt_out)" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
