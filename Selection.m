function [arrIndividual,arrFitness] = Selection(arrAllIndividual, arrAllFitness, population)
    % Bubble Sort
   [row, column] = size(arrAllFitness);
    for i = 1 : row
        for j = 1 : row - 1

            if arrAllFitness(j) > arrAllFitness(j+1)
    %             Swap Fitness
                  tempFitness = arrAllFitness(j);
                  arrAllFitness(j) = arrAllFitness(j+1);
                  arrAllFitness(j+1) = tempFitness;

    %             Swap Individual
                  tempIndividual = arrAllIndividual(j, :);
                  arrAllIndividual(j, :) = arrAllIndividual(j+1, :);
                  arrAllIndividual(j+1, :) = tempIndividual;

            end

        end
    end

    arrIndividual = arrAllIndividual(1:population, :);
    arrFitness = arrAllFitness(1:population);
end

