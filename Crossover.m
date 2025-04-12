function arrOffspringCross = Crossover(population,arrIndividual)
    crossRate = 0.4;
    alpha = rand();
%     alpha

    offspring = crossRate * population;
    offspring = ceil(offspring);
%     offspring

    numberOfIterations = offspring / 2;
    numberOfIterations = ceil(numberOfIterations);

    offspring = numberOfIterations * 2;
%     offspring

    arrOffspringCross = zeros(offspring, 11);
    offspringIndex = 1;
    for i = 1 : numberOfIterations

        indexP1 = randi([1, population]);
        indexP2 = randi([1, population]);

        while indexP1 == indexP2
            indexP2 = randi([1, population]);
        end

        for j = 1 : 11
            arrOffspringCross(offspringIndex, j) = arrIndividual(indexP1, j) + (alpha * (arrIndividual(indexP2,j) - arrIndividual(indexP1, j)));
            arrOffspringCross(offspringIndex+1, j) = arrIndividual(indexP2, j) + (alpha * (arrIndividual(indexP1,j) - arrIndividual(indexP2, j)));
        end
        offspringIndex= offspringIndex + 2;
    end
end

