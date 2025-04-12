function holdingVendorCost = BiayaHoldingVendor(varHv,varTotalQ, varM, varDt, varP)
    holdingVendorCost = ( varHv * (varTotalQ/2) * ( varM * ( 1 - (varDt/varP)) - 1 + ((2 * varDt)/varP) ));
end

