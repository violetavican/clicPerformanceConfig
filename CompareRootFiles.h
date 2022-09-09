import ROOT
using namespaces std;
#include <stdio.h>      /* printf, fgets */
//#include <stdlib.h>     /* atoi */
#include <sstream>
#include <TH1F.h>
from ROOT import TFile


int main(int argc, char* argv[]) {

    std::string  p = argv[2];
    std::cout << "Marlin file: " << p << std::endl;
    Tfile tfile_a = TFile

    /* //   IHistogram1D*
    TH1* th1_Mar = (TH1*)(tfile_a->Get("hist"));
    TH1* th1_Gau = (TH1*)(tfile_b->Get("hist"));
    TCanvas* canvas = new TCanvas("canvas", "canvas");
    th1_Mar->DrawNormalized();
    th1_Gau->DrawNormalized("same");
    th1_Gau->SetLineColor(kBlue);
    TLegend* legend = new TLegend(0.6, 0.75, 0.9, 0.9);
    legend->AddEntry(th1_Mar, "Hist Marlin");
    legend->AddEntry(th1_Gau, "Hist Gaudi");
    legend->Draw(); */

}