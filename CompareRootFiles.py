import ROOT
#include <TH1F.h>
#ROOT import TFile, TCanvas, TLegend



# TH1* th1_a = (TH1*)(tfile_a->Get("hist"));
# TH1* th1_b = (TH1*)(tfile_b->Get("hist"));
# TCanvas* canvas = new TCanvas("canvas", "canvas");
# th1_a->DrawNormalized();
# th1_b->DrawNormalized("same");
# th1_b->SetLineColor(kBlue);
# TLegend* legend = new TLegend(0.6, 0.75, 0.9, 0.9);
# legend->AddEntry(th1_a, "Hist A");
# legend->AddEntry(th1_b, "Hist B");
# legend->Draw();


def plot_compare(tree1, tree2, atrib_name, axis_name="", min_range=0, max_range=-1, n_bins=100, cv_name="canvas"):
    canvas = ROOT.TCanvas(cv_name)
    canvas.SetGrid()

    h1name = "h1_%s" % atrib_name.replace("#", "")
    tree1.Draw(atrib_name + f" >> {h1name} ({n_bins}, {min_range}, {max_range})")
    h1 = ROOT.gROOT.FindObject(h1name)
    h1.SetLineColor(ROOT.kRed)
    h1.SetLineWidth(2)
    h1.SetTitle("EDM4hep through the Wrapper: " + atrib_name)

    # h2name = "h2_%s" % atrib_name.replace("#", "")
    # tree2.Draw(atrib_name + f" >> {h2name} ({n_bins}, {min_range}, {max_range})")
    # h2 = ROOT.gROOT.FindObject(h2name)
    # h2.SetLineColor(ROOT.kBlue)
    # h2.SetTitle("EDM4hep with Gaudi implementation: " + atrib_name)
    # h2.SetLineStyle(2)

    #canvas.BuildLegend()
    canvas.SaveAs("both_test_" + atrib_name.replace("VXDTrackerHits.", "") + ".pdf")

def plot_compare2(tree1, tree2, atrib_name, axis_name="", min_range=0, max_range=-1, n_bins=100, cv_name="canvas"):
    canvas = ROOT.TCanvas(cv_name)
    canvas.SetGrid()

    h1name = "h1_%s" % atrib_name.replace("#", "")
    tree1.Draw(atrib_name + f" >> {h1name} ({n_bins}, {min_range}, {max_range})")
    h1 = ROOT.gROOT.FindObject(h1name)
    h1.SetLineColor(ROOT.kRed)
    h1.SetLineWidth(2)
    h1.SetTitle("EDM4hep through the Wrapper: " + atrib_name + ";" + axis_name)

    h2name = "h2_%s" % atrib_name.replace("#", "")
    tree2.Draw(atrib_name + f" >> {h2name} ({n_bins}, {min_range}, {max_range})", "", "same")
    h2 = ROOT.gROOT.FindObject(h2name)
    h2.SetLineColor(ROOT.kBlue)
    h2.SetTitle("EDM4hep with Gaudi implementation: " + atrib_name)
    h2.SetLineStyle(2)


    #canvas.BuildLegend()
    canvas.SaveAs("both_test_" + atrib_name.replace("VXDTrackerHits.", "") + ".pdf")

def main():
    # f = ROOT.TFile("my_MarlinOutput.root", "read")
    # br = f.Get("events")
    # nEntries = br.GetEntries()
    # print(nEntries)

    lcio_file = ROOT.TFile("my_MarlinOutput.root", "read")
    tree_lcio = lcio_file.Get("events")

    e4h_file = ROOT.TFile("my_GaudiOutput.root", "read") 
    tree_e4h = e4h_file.Get("events")


    # plot selected things
    plot_compare2(tree_lcio, tree_e4h, "VXDTrackerHits.eDep", "X", 0, 0.0002)
    plot_compare2(tree_lcio, tree_e4h, "VXDTrackerHits.time", "X", 0, 1)
    plot_compare2(tree_lcio, tree_e4h, "VXDTrackerHits.type")
    plot_compare2(tree_lcio, tree_e4h, "VXDTrackerHits.position.x")
    # plot_compare2(tree_lcio, tree_e4h, "VertexBarrelCollection.position.x - VXDTrackerHits.position.x",
    #                                 axis_name="x_{simHit} - x_{trackerHit} [mm]; Number of Hits")
    plot_compare2(tree_lcio, tree_e4h, "VXDTrackerHits.position.y")
    plot_compare2(tree_lcio, tree_e4h, "VXDTrackerHits.position.z", "DDPlanarDigiProcessor.position.z")
    plot_compare2(tree_lcio, tree_e4h, "VXDTrackerHits.type", "DDPlanarDigiProcessor.type")
    

# chain)e4h is the specific atribute object i wanna compare
    #lcio_f, e4h_f, 
    
    # print(tree_lcio.GetListOfBranches())

    # for ev_lcio in tree_lcio and ev_e4h in tree_e4h:
    #     for branch in ev_lcio.GetListOfBranches() and ev_e4h.GetListOfBranches():
    #         for entry in branch.GetListOfBranches():
    #             plot_compare("VXDTrackerHits.eDep", "DDPlanarDigiProcessor.eDep", "X", 0, 0.0003)
    #             break
                
    #         break
    #     break
        


    # plot_compare_branch(entry.GetName(), chain_lcio, chain_e4h, "all_plots")
    #break 
    # #h1.SetDirectory(ROOT.nullptr)
    # # lcio_f.Draw(atrib_name + f" >> {h1name} ({n_bins}, {min_range}, {max_range})") # DONT GET THIS

    # # h1.DrawNormalized()
    # h1.SetLineColor(ROOT.kRed)
    # h1.SetTitle("LCIO")
    # h1.SetLineStyle(2)

    # # 
    # # #h2name = "h1_%s" % atrib_name_e4h.replace("#","")
    # # h2 = e4h_file.Get(h2name)

    # # h2.SetDirectory(ROOT.nullptr)
    # # # e4h_f.Draw(br_name + f" >> {h2name} ({n_bins}, {min_range}, {max_range})", "1", "same", nentries=990)

    # # h2.DrawNormalized("same")
    # # h2.SetLineColor(ROOT.kBlue)
    # # h2.SetTitle("EDM4hep")
    # # h2.SetLineWidth(2)
        
    # legend = ROOT.TLegend(0.6, 0.75, 0.9, 0.9)
    # legend.AddEntry(h_lcio, "Hist Marlin")
    # legend.AddEntry(h_e4h, "Hist Gaudi")
    # legend.Draw()

    # canvas = ROOT.TCanvas(cv_name)
    # canvas.SetGrid()

if __name__ == "__main__":
    main()