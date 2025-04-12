function reductionCost = BiayaPercepatan(varD, varQq, varC, varLiMin, varL, varSigmaReductionCost, index)
    hasil =  (varC(index) * (varLiMin(index) -  varL) + (varSigmaReductionCost(index)));
    reductionCost = (varD(index)/varQq) * hasil ;
end

