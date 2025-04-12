function [arrAllIndividu, arrAllFitness] = Evaluasi(arrAnakCross,arrAnakMutasi,arrIndividu,arrFitness)
    
    arrAnak = [arrAnakCross ; arrAnakMutasi];
    [baris, kolom] = size(arrAnak);
    arrFitnessAnak = HitungFitness(baris, arrAnak);

%     for i = 1 : baris
%         formatted_numbers = num2str(arrFitnessAnak(i), '%.2f, ');
%         formatted_numbers = InsertCommas(formatted_numbers);
%         fprintf("Fitness Individu Anak %d : Rp %s\n",i, formatted_numbers);
%     end

    arrAllIndividu = [arrIndividu ; arrAnak];
    arrAllFitness = [arrFitness; arrFitnessAnak];

end

