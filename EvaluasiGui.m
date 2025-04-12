function [arrAllIndividu, arrAllFitness] = EvaluasiGui(arrAnakCross,arrAnakMutasi,arrIndividu,arrFitness, batikDemand, margariaDemand, fendiDemand, batikCost, margariaCost, fendiCost)
    
    arrAnak = [arrAnakCross ; arrAnakMutasi];
    [baris, kolom] = size(arrAnak);
    arrFitnessAnak = HitungFitnessGui(baris, arrAnak, batikDemand, margariaDemand, fendiDemand, batikCost, margariaCost, fendiCost);

%     for i = 1 : baris
%         formatted_numbers = num2str(arrFitnessAnak(i), '%.2f, ');
%         formatted_numbers = InsertCommas(formatted_numbers);
%         fprintf("Fitness Individu Anak %d : Rp %s\n",i, formatted_numbers);
%     end

    arrAllIndividu = [arrIndividu ; arrAnak];
    arrAllFitness = [arrFitness; arrFitnessAnak];

end