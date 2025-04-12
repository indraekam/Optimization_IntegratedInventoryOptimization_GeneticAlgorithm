function [arrIndividu,arrFitness] = Seleksi(arrAllIndividu, arrAllFitness, populasi)
    % Bubble Sort
   [baris, kolom] = size(arrAllFitness);
    for i = 1 : baris
        for j = 1 : baris - 1

            if arrAllFitness(j) > arrAllFitness(j+1)
    %             Swap Fitness
                  tempF = arrAllFitness(j);
                  arrAllFitness(j) = arrAllFitness(j+1);
                  arrAllFitness(j+1) = tempF;

    %             Swap Individu
                  tempI = arrAllIndividu(j, :);
                  arrAllIndividu(j, :) = arrAllIndividu(j+1, :);
                  arrAllIndividu(j+1, :) = tempI;

            end

        end
    end

    arrIndividu = arrAllIndividu(1:populasi, :);
    arrFitness = arrAllFitness(1:populasi);
end

