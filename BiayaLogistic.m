function logisticCost = BiayaLogistic(varD,varQq, varAlpha, varF, varWx, varGamma, varDelta, varDv, varDb, varW, index)
hasil = (varAlpha * varF(index) * varWx + varGamma * varDelta ) * (2 * varDv + varDb(index))  + ( varD(index) * (1 - varAlpha) * varF(index) * varW * (2 * varDv + varDb(index)));
logisticCost = (varD(index)/varQq) * hasil;
end

