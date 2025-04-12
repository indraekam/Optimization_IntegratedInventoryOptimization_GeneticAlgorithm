function arrFitness = CalculateFitnessGui(population, arrIndividual, demandOfBKR, demandOfMGB, demandOfFRB, logisticCostOfBKR, logisticCostOfMGB, logisticCostOfFRB)
% CalculateFitnessGui Summary of this function goes here
% Detailed explanation goes here
arrFitness = zeros(population, 1);
for x = 1 : population
    varS = 661149;
    varDt = demandOfBKR + demandOfMGB + demandOfFRB; %demand
    varHv = 71196;
    varP = 1318;
    varG = 262213;
    varT = 0.06;
    varN = 15714286;
    varThetaZero = 7.167 / 100;
    varTotalQ = arrIndividual(x,1) + arrIndividual(x, 4) + arrIndividual(x,7);
    varM = arrIndividual(x, 10);
    varTheta = arrIndividual(x, 11);
    setupCost = SetupCost(varS, varDt, varM, varTotalQ);
    holdingVendorCost = HoldingVendorCost(varHv,varTotalQ, varM, varDt, varP);
    reworkCost = ReworkCost(varG,varM, varTotalQ, varDt, varTheta);
    qualityImprovementCost = QualityImprovementInvestment(varT, varN, varThetaZero, varTheta);
    jtecv = setupCost + holdingVendorCost + reworkCost + qualityImprovementCost ;
    % fprintf('%.9f', jtecv);

    % Var Hitung JTXCB
    varD = [demandOfBKR, demandOfMGB, demandOfFRB]; % 1. BKR, 2. MGR, 3.FRB
    varA = [600000,600000,400000]; % 1. BKR, 2. MGR, 3.FRB
    varPhi = [238719, 238719, 238719]; % 1. BKR, 2. MGR, 3.FRB
    varBeta = [0.25, 0.25, 0.3];% 1. BKR, 2. MGR, 3.FRB
    varPhiZero = [990000, 495000, 825000];% 1. BKR, 2. MGR, 3.FRB
    varStandardDeviation = [2.658, 1.007, 0.9055]; % 1. BKR, 2. MGR, 3.FRB

    x_pdf = [ arrIndividual(x, 2), arrIndividual(x, 5), arrIndividual(x, 8)];
    varPdf = normpdf(x_pdf);

    varCdf = normcdf(x_pdf);

    varAlpha = 0.0035;
    varF = [logisticCostOfBKR, logisticCostOfMGB, logisticCostOfFRB];
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
    % BKR
    jtecb = zeros(3,1);
    index = 1;
    for i = 1:3:7
        varQq = arrIndividual(x,i);
        varL = arrIndividual(x, i+2);
        varK = arrIndividual(x, i+1);
        orderingCost = OrderCost(varD,varQq, varA, index); 
        shortageCost = ShortageCost(varD,varQq, varPhi, varBeta, varPhiZero, varStandardDeviation, varL, varPdf, varK, varCdf,index);
        reductionCost = ReductionCost(varD, varQq, varC, varLiMin, varL, varSigmaReductionCost, index);
        logisticCost = LogisticCost(varD,varQq, varAlpha, varF, varWx, varGamma, varDelta, varDv, varDb, varW, index);
        holdingCostBuyer = HoldingCostBuyer(varHb, varQq, varK, varStandardDeviation, varL, varBeta, varPdf, varCdf, index);
        jtecb(index,1) = orderingCost + shortageCost  + logisticCost + holdingCostBuyer  +  reductionCost ;  
        index = index + 1;
    end

    total = 0;
    for i = 1 : 3
        total = total + jtecb(i,1);
    end

    totalFitness = jtecv + total;
%     fprintf('Fitness : %.3f\n', totalFitness);
    arrFitness(x, 1) = totalFitness;
    
end



