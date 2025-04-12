function shortageCost = BiayaShortage(varD,varQq, varPhi, varBeta, varPhiNol, varSimpanganBaku, varL, varPdf, varK, varCdf, index)
hitung =   ( (varPhi(index) * varBeta(index)) + (varPhiNol(index) *  (1-varBeta(index)) * varSimpanganBaku(index) * sqrt(varL / 7) * (varPdf(index) - (varK * (1 - varCdf(index))) )));
shortageCost = (varD(index)/varQq) * hitung ;
end

