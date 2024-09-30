<Qucs Schematic 24.3.0>
<Properties>
  <View=-261,-30,850,581,1.42881,0,0>
  <Grid=10,10,1>
  <DataSet=ac_simulace.dat>
  <DataDisplay=ac_simulace.dpl>
  <OpenDisplay=0>
  <Script=ac_simulace.m>
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
  <GND * 1 200 380 0 0 0 0>
  <IProbe amp_in 1 210 280 -26 16 0 0>
  <VProbe volt_in 1 210 360 -62 -31 1 2>
  <GND * 1 80 380 0 0 0 0>
  <Vac zdroj 1 80 350 18 -26 0 1 "1 V" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 490 380 0 0 0 0>
  <Eqn Vypocet_vstupni_impedance 1 280 430 -25 17 0 0 "Z_in=volt_in.v / amp_in.i" 1 "yes" 0>
  <.AC AC1 1 80 420 0 40 0 0 "lin" 1 "1 MHz" 1 "2 GHz" 1 "1000" 1 "no" 0>
  <R zatez 1 490 350 15 -26 0 1 "50e12 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Sub VEDENI1 1 350 280 -26 28 0 0 "VEDENI.sch" 0 "50" 1 "50e-12" 1 "1" 1>
</Components>
<Wires>
  <240 280 270 280 "" 0 0 0 "">
  <220 380 270 380 "" 0 0 0 "">
  <270 280 270 380 "" 0 0 0 "">
  <80 280 80 320 "" 0 0 0 "">
  <80 280 180 280 "" 0 0 0 "">
  <490 280 490 320 "" 0 0 0 "">
  <400 280 490 280 "" 0 0 0 "">
  <270 280 300 280 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 80 172 411 162 3 #c0c0c0 1 01 1 0 2e+08 2e+09 1 0.01 1 100000 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.z_in" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
