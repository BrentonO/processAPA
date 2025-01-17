#!/usr/bin/env python

import ROOT

infile = ROOT.TFile("output.root", "read")

print("The file contains:")
keys = infile.GetListOfKeys()
for key in keys:
    print(key.GetName())

ROOT.gStyle.SetPalette(ROOT.kRainBow)

#graph0 = infile.Get("graph_0")
#c1 = ROOT.TCanvas("c1","c1",1600,1000)
#graph0.Draw()
#c1.SaveAs("graph0.png")

#hist0 = infile.Get("hist_0")
#c2 = ROOT.TCanvas("c2","c2",1600,1000)
#hist0.Draw("SURF2")
#c2.SaveAs("hist0.png")

hist1 = infile.Get("U")
c3 = ROOT.TCanvas("c3","c3",1600,1000)
#hist1.SetStats(False)
#hist1.Draw("COLZ2")
hist1.Draw("SURF2")
c3.SaveAs("plane1.png")

hist2 = infile.Get("V")
c4 = ROOT.TCanvas("c4","c4",1600,1000)
#hist2.SetStats(False)
hist2.Draw("SURF2")
c4.SaveAs("plane2.png")

hist3 = infile.Get("X")
c5 = ROOT.TCanvas("c5","c5",1600,1000)
#hist3.SetStats(False)
hist3.Draw("SURF2")
c5.SaveAs("plane3.png")