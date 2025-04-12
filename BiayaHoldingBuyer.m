function holdingCostBuyer = BiayaHoldingBuyer(varHb, varQq, varK, varSimpanganBaku, varL, varBeta, varPdf, varCdf, index )
    holdingCostBuyer = varHb(index)  * ((varQq/2)+ varK *varSimpanganBaku(index) * sqrt(varL/7) + (1 - varBeta(index) * ( varPdf(index) - varK * (1 - varCdf(index)) ) * sqrt(varL/7) ) );
end

