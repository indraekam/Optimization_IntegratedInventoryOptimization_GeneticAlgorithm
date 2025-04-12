function arrFitness = HitungFitnessGui(populasi, arrIndividu, batikDemand, margariaDemand, fendiDemand, batikCost, margariaCost, fendiCost)
%HITUNGFITNESS Summary of this function goes here
%   Detailed explanation goes here
arrFitness = zeros(populasi, 1);
for x = 1 : populasi
    varS = 661149;
    varDt = batikDemand + margariaDemand + fendiDemand; %demand
    varHv = 71196;
    varP = 1318;
    varG = 262213;
    varT = 0.06;
    varN = 15714286;
    varThetaNol = 7.167 / 100;
    varTotalQ = arrIndividu(x,1) + arrIndividu(x, 4) + arrIndividu(x,7);
    varM = arrIndividu(x, 10);
    varTheta = arrIndividu(x, 11);
    setupCost = BiayaSetup(varS, varDt, varM, varTotalQ);
    holdingVendorCost = BiayaHoldingVendor(varHv,varTotalQ, varM, varDt, varP);
    reworkCost = BiayaRework(varG,varM, varTotalQ, varDt, varTheta);
    qualityImprovementCost = InvestasiPerbaikanKualitas(varT, varN, varThetaNol, varTheta);
    jtecv = setupCost + holdingVendorCost + reworkCost + qualityImprovementCost ;
    % fprintf('%.9f', jtecv);

    % Var Hitung JTXCB
    varD = [batikDemand, margariaDemand, fendiDemand]; % 1. Batik Kersi, 2. Margaria, 3.Fhendi
    varA = [600000,600000,400000]; % 1. Batik Kersi, 2. Margaria, 3.Fhendi
    varPhi = [238719, 238719, 238719]; % 1. Batik Kersi, 2. Margaria, 3.Fhendi
    varBeta = [0.25, 0.25, 0.3];% 1. Batik Kersi, 2. Margaria, 3.Fhendi
    varPhiNol = [990000, 495000, 825000];% 1. Batik Kersi, 2. Margaria, 3.Fhendi
    varSimpanganBaku = [2.658, 1.007, 0.9055]; % 1. Batik Kersi, 2. Margaria, 3.Fhendi

    x_pdf = [ arrIndividu(x, 2), arrIndividu(x, 5), arrIndividu(x, 8)];
    varPdf = normpdf(x_pdf);

    varCdf = normcdf(x_pdf);

    varAlpha = 0.0035;
    varF = [batikCost, margariaCost, fendiCost];
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
        varQq = arrIndividu(x,i);
        varL = arrIndividu(x, i+2);
        varK = arrIndividu(x, i+1);
        orderingCost = BiayaPesan(varD,varQq, varA, index); 
        shortageCost = BiayaShortage(varD,varQq, varPhi, varBeta, varPhiNol, varSimpanganBaku, varL, varPdf, varK, varCdf,index);
        reductionCost = BiayaPercepatan(varD, varQq, varC, varLiMin, varL, varSigmaReductionCost, index);
        logisticCost = BiayaLogistic(varD,varQq, varAlpha, varF, varWx, varGamma, varDelta, varDv, varDb, varW, index);
        holdingCostBuyer = BiayaHoldingBuyer(varHb, varQq, varK, varSimpanganBaku, varL, varBeta, varPdf, varCdf, index);
        jtecb(index,1) = orderingCost + shortageCost  + logisticCost + holdingCostBuyer  +  reductionCost ;  
        index = index + 1;
    end

    total = 0;
    for i = 1 : 3
        total = total + jtecb(i,1);
    end

    totalFitnes = jtecv + total;
%     fprintf('Fitness : %.3f\n', totalFitnes);
    arrFitness(x, 1) = totalFitnes;
    
end


