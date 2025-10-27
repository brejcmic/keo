<Qucs Schematic 24.3.2>
<Properties>
  <View=-335,-30,880,653,1.306,0,0>
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
  <GND * 1 450 480 0 0 0 0>
  <VProbe volt_out 1 390 330 28 -31 0 0>
  <GND * 1 400 350 0 0 0 0>
  <VProbe volt_in 1 210 330 28 -31 0 0>
  <GND * 1 220 350 0 0 0 0>
  <GND * 1 30 480 0 0 0 0>
  <Sub VEDENI1 1 310 420 -26 28 0 0 "VEDENI.sch" 0 "50" 1 "50e-12" 1 "2" 1>
  <.TR TR1 1 30 520 0 68 0 0 "lin" 1 "0" 1 "50 ns" 1 "1000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vpulse V1 1 30 450 18 -26 0 1 "0 V" 1 "5 V" 1 "10 ns" 1 "4000 ns" 0 "2 ns" 1 "2 ns" 0>
  <R R1 1 150 420 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 450 450 15 -26 0 1 "220 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <30 420 120 420 "" 0 0 0 "">
  <380 350 380 420 "" 0 0 0 "">
  <180 420 200 420 "" 0 0 0 "">
  <200 350 200 420 "" 0 0 0 "">
  <360 420 380 420 "" 0 0 0 "">
  <200 420 260 420 "" 0 0 0 "">
  <380 420 450 420 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 30 251 514 241 3 #c0c0c0 1 00 1 0 5e-09 5e-08 1 -0.414682 2 4.5615 1 -1 0.5 1 315 0 225 1 0 0 "time (s)" "" "">
	<"ngspice/tran.v(volt_in)" #0000ff 0 3 0 0 0>
	<"ngspice/tran.v(volt_out)" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
