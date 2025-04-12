function fitnessBest = PrintDetail(arrIndividu)
    varS = 661149;
    varDt = 339 + 206 + 317;
    varHv = 71196;
    varP = 1318;
    varG = 262213;
    varT = 0.06;
    varN = 15714286;
    varThetaNol = 7.167 / 100;
    varTotalQ = arrIndividu(1,1) + arrIndividu(1, 4) + arrIndividu(1,7);
    varM = arrIndividu(1, 10);
    varTheta = arrIndividu(1, 11);
    setupCost = BiayaSetup(varS, varDt, varM, varTotalQ);
    holdingVendorCost = BiayaHoldingVendor(varHv,varTotalQ, varM, varDt, varP);
    reworkCost = BiayaRework(varG,varM, varTotalQ, varDt, varTheta);
    qualityImprovementCost = InvestasiPerbaikanKualitas(varT, varN, varThetaNol, varTheta);
    jtecv = setupCost + holdingVendorCost + reworkCost + qualityImprovementCost ;
    % fprintf('%.9f', jtecv);
    fprintf('BKI (Vendor):\n');
    
    formatted_setupCost= num2str(setupCost, '%.2f, ');
    formatted_setupCost = InsertCommas(formatted_setupCost);
    fprintf('Biaya Setup : Rp %s\n', formatted_setupCost);
    
    formatted_holdingVendorCost= num2str(holdingVendorCost, '%.2f, ');
    formatted_holdingVendorCost = InsertCommas(formatted_holdingVendorCost);
    fprintf('Biaya Holding Vendor : Rp %s\n', formatted_holdingVendorCost);
    
    formatted_qualityImprovementCost = num2str(qualityImprovementCost, '%.2f, ');
    formatted_qualityImprovementCost = InsertCommas(formatted_qualityImprovementCost);
    fprintf('Biaya Investasi Perbaikan Kualitas : Rp %s\n', formatted_qualityImprovementCost);
    
    formatted_reworkCostt = num2str(reworkCost, '%.2f, ');
    formatted_reworkCostt = InsertCommas(formatted_reworkCostt);
    fprintf('Biaya Rework: Rp %s\n', formatted_reworkCostt);
    fprintf('==========================================\n');

    % Var Hitung JTXCB
    varD = [336, 317, 206]; % 1. BKR, 2. MBG, 3.FRB
    varA = [600000,600000,400000]; % 1. BKR, 2. MBG, 3.FRB
    varPhi = [238719, 238719, 238719]; % 1. BKR, 2. MBG, 3.FRB
    varBeta = [0.25, 0.25, 0.3];% 1. BKR, 2. MBG, 3.FRB
    varPhiNol = [990000, 495000, 825000];% 1. BKR, 2. MBG, 3.FRB
    varSimpanganBaku = [2.658, 1.007, 0.9055]; % 1. BKR, 2. MBG, 3.FRB

    x_pdf = [ arrIndividu(1, 2), arrIndividu(1, 5), arrIndividu(1, 8)];
    varPdf = normpdf(x_pdf);

    varCdf = normcdf(x_pdf);

    varAlpha = 0.0035;
    varF = [321.78, 322.58, 588.20];
    varWx = 8000;
    varGamma = 0.395;
    varDelta = 6800;
    varDv = 2.5;
    varDb = [37.9, 37.7, 12.9];
    varW = 0.5;
    varHb = [48279, 63896, 64994];
    varC = [38000, 38000, 38000];
    varLiMin = [90, 75, 43];
    varSigmaReductionCost = [20000, 20000, 18000];
    % Batik Keris
    jtecb = zeros(3,1);
    index = 1;
    for i = 1:3:7
        if i == 1
            disp('BKR :'); 
        elseif i == 4
            disp('MGB :'); 
        else
            disp('FRB :'); 
        end
        
        varQq = arrIndividu(1,i);
        varL = arrIndividu(1, i+2);
        varK = arrIndividu(1, i+1);
        orderingCost = BiayaPesan(varD,varQq, varA, index); 
        shortageCost = BiayaShortage(varD,varQq, varPhi, varBeta, varPhiNol, varSimpanganBaku, varL, varPdf, varK, varCdf,index);
        reductionCost = BiayaPercepatan(varD, varQq, varC, varLiMin, varL, varSigmaReductionCost, index);
        logisticCost = BiayaLogistic(varD,varQq, varAlpha, varF, varWx, varGamma, varDelta, varDv, varDb, varW, index);
        holdingCostBuyer = BiayaHoldingBuyer(varHb, varQq, varK, varSimpanganBaku, varL, varBeta, varPdf, varCdf, index);
        
        formatted_orderingCost = num2str(orderingCost, '%.2f, ');
        formatted_orderingCost = InsertCommas(formatted_orderingCost);
        fprintf('Biaya Pesan : Rp %s\n', formatted_orderingCost);
        
        formatted_reductionCost = num2str(reductionCost, '%.2f, ');
        formatted_reductionCost = InsertCommas(formatted_reductionCost);
        fprintf('Biaya Percepatan : Rp %s\n', formatted_reductionCost);
        
        formatted_shortageCost = num2str(shortageCost, '%.2f, ');
        formatted_shortageCost = InsertCommas(formatted_shortageCost);
        fprintf('Biaya Shortage : Rp %s\n', formatted_shortageCost);
        
        formatted_logisticCost = num2str(logisticCost, '%.2f, ');
        formatted_logisticCost = InsertCommas(formatted_logisticCost);
        fprintf('Biaya Logistic : Rp %s\n', formatted_logisticCost);
        
        formatted_holdingCostBuyer = num2str(holdingCostBuyer, '%.2f, ');
        formatted_holdingCostBuyer = InsertCommas(formatted_holdingCostBuyer);
        fprintf('Biaya Holding Buyer : Rp %s\n', formatted_holdingCostBuyer);
        
        jtecb(index,1) = orderingCost + shortageCost  + logisticCost + holdingCostBuyer  +  reductionCost ;  
        index = index + 1;
        disp('==========================================');
    end

    total = 0;
    for i = 1 : 3
        total = total + jtecb(i,1);
    end

    totalFitnes = jtecv + total;
%     fprintf('Fitness : %.3f\n', totalFitnes);
    fitnessBest = totalFitnes;
end

