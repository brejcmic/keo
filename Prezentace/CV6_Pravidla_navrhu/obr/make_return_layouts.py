"""Generate two didactic KiCad boards, not production-ready designs.
Run with the Python bundled with KiCad 10, from this directory.
Inner reference planes are present, but hidden in the illustration exports.
"""
from pathlib import Path
import pcbnew as p

ROOT = Path(__file__).resolve().parent

def xy(x, y):
    return p.VECTOR2I(p.FromMM(x), p.FromMM(y))

def make_board(capacitor):
    board = p.BOARD()
    board.SetCopperLayerCount(4)
    nets = {}
    for name in ('GND', 'PWR', 'SIG'):
        net = p.NETINFO_ITEM(board, name)
        board.Add(net)
        nets[name] = net

    def track(a, b, net, layer=p.F_Cu, width=.3):
        t = p.PCB_TRACK(board)
        t.SetStart(xy(*a)); t.SetEnd(xy(*b))
        t.SetWidth(p.FromMM(width)); t.SetLayer(layer); t.SetNet(nets[net])
        board.Add(t)

    def via(x, y, net):
        v = p.PCB_VIA(board)
        v.SetPosition(xy(x,y)); v.SetWidth(p.FromMM(.7)); v.SetDrill(p.FromMM(.3))
        v.SetViaType(p.VIATYPE_THROUGH); v.SetLayerPair(p.F_Cu,p.B_Cu)
        v.SetNet(nets[net]); board.Add(v)

    def text(x,y,value,size=.7):
        t = p.PCB_TEXT(board); t.SetText(value); t.SetPosition(xy(x,y))
        t.SetTextSize(xy(size,size)); t.SetTextThickness(p.FromMM(.12))
        t.SetLayer(p.Dwgs_User); board.Add(t)

    def rect(a,b,layer):
        s = p.PCB_SHAPE(board); s.SetShape(p.SHAPE_T_RECT)
        s.SetStart(xy(*a)); s.SetEnd(xy(*b)); s.SetLayer(layer)
        s.SetWidth(p.FromMM(.12)); board.Add(s)

    # A deliberately generic three-pin IC model (not a real device pinout).
    ic = p.FOOTPRINT(board); ic.SetReference('U1'); ic.SetValue('MODEL')
    ic.SetPosition(xy(53,48.5)); board.Add(ic)
    ic.Reference().SetVisible(False); ic.Value().SetVisible(False)
    rect((52.5,45.8),(55.5,51.2),p.Dwgs_User)
    for number, y, net in [(1,-1.5,'PWR'),(2,0,'GND'),(3,1.5,'SIG')]:
        pad=p.PAD(ic); pad.SetNumber(str(number)); pad.SetShape(p.PAD_SHAPE_RECT)
        pad.SetAttribute(p.PAD_ATTRIB_SMD); pad.SetSize(xy(1,.7))
        layers=p.LSET(); layers.AddLayer(p.F_Cu)
        pad.SetLayerSet(layers); pad.SetPosition(xy(52,48.5+y))
        pad.SetNet(nets[net]); ic.Add(pad)
    text(54,48.5,'U1',.8)
    via(47,50,'SIG')
    track((52,50),(47,50),'SIG')
    track((47,50),(41,50),'SIG',p.B_Cu)
    text(44,51.5,'B.Cu: SIG')
    text(49.5,51.5,'F.Cu: SIG')
    text(46.1,49.1,'SIG',.6)
    if capacitor:
        cap = p.FOOTPRINT(board)
        board.Add(cap); cap.SetPosition(xy(49,47)); cap.SetReference('C1')
        cap.Reference().SetVisible(False); cap.Value().SetVisible(False)
        for number,x,net in [(1,48.225,'GND'),(2,49.775,'PWR')]:
            pad=p.PAD(cap); pad.SetNumber(str(number)); pad.SetShape(p.PAD_SHAPE_RECT)
            pad.SetAttribute(p.PAD_ATTRIB_SMD); pad.SetSize(xy(.9,.95))
            layers=p.LSET(); layers.AddLayer(p.F_Cu); pad.SetLayerSet(layers)
            pad.SetPosition(xy(x,47)); pad.SetNet(nets[net]); cap.Add(pad)
        rect((48.6,46.6),(49.4,47.4),p.Dwgs_User)
        track((49.775,47),(52,47),'PWR',width=.5)
        track((48.225,47),(48.225,48),'GND',width=.5)
        track((49.775,47),(49.775,48),'PWR',width=.5)
        via(48.225,48,'GND'); via(49.775,48,'PWR')
        track((52,48.5),(51,48.5),'GND',width=.4); via(51,48.5,'GND')
        text(49,45.7,'C1',.7)
        text(46.9,47.8,'GND',.5); text(49.6,49,'PWR',.5)
        text(48.5,43.8,'L2 = GND, L3 = PWR')
    else:
        via(47,48.7,'GND'); text(47,47.4,'GND')
        text(48.5,43.8,'L2 = GND, L3 = GND')
    rect((39.5,42.5),(57,53),p.Edge_Cuts)
    for layer,net in [(p.In1_Cu,'GND'),(p.In2_Cu,'PWR' if capacitor else 'GND')]:
        zone=p.ZONE(board); zone.SetLayer(layer); zone.SetNet(nets[net])
        zone.SetLocalClearance(p.FromMM(.25)); zone.SetThermalReliefGap(p.FromMM(.25))
        zone.SetThermalReliefSpokeWidth(p.FromMM(.3))
        outline=zone.Outline(); outline.NewOutline()
        for x,y in [(39.8,42.8),(56.7,42.8),(56.7,52.7),(39.8,52.7)]:
            outline.Append(p.FromMM(x),p.FromMM(y))
        board.Add(zone)
    p.ZONE_FILLER(board).Fill(board.Zones())
    p.SaveBoard(str(ROOT / ('layout_cap.kicad_pcb' if capacitor else 'layout_gnd.kicad_pcb')),board)

make_board(False)
make_board(True)
