function arrOffspringMutation = Mutation(population,arrIndividual)
    mutationRate = 0.4;
    r = rand();

    offspring = mutationRate * population;
    offspring = ceil(offspring);
    
    % BKR
    variableLimit(1, 1) = 10; % Q Min
    variableLimit(1, 2) = 30; % Q Max

    variableLimit(2, 1) = 0; % k Min
    variableLimit(2, 2) = 1; % k Max

    variableLimit(3, 1) = 82; % L Min
    variableLimit(3, 2) = 92; % L Max
    
    % MGB
    variableLimit(4, 1) = 10; % Q Min
    variableLimit(4, 2) = 30; % Q Max

    variableLimit(5, 1) = 0; % k Min
    variableLimit(5, 2) = 1; % k Max

    variableLimit(6, 1) = 62; % L Min
    variableLimit(6, 2) = 77; % L Max

    % FRB  
    variableLimit(7, 1) = 10; % Q Min
    variableLimit(7, 2) = 30; % Q Max

    variableLimit(8, 1) = 0; % k Min
    variableLimit(8, 2) = 1; % k Max

    variableLimit(9, 1) = 35; % L Min
    variableLimit(9, 2) = 45; % L Max
    
   % BKI (Vendor)
    variableLimit(10, 1) = 1; % m Min
    variableLimit(10, 2) = 10; % m Max
    
    variableLimit(11, 1) = 0; % theta Min
    variableLimit(11, 2) = 1; % theta Max


   arrOffspringMutation = zeros(offspring, 11);

   for i = 1 : offspring
       indexP1 = randi([1, population]);
       for j = 1 : 11
           arrOffspringMutation(i, j) = arrIndividual(indexP1, j) + (r * (variableLimit(j,2) - variableLimit(j,1)));
           if arrOffspringMutation(i, j) > variableLimit(j,2)
               arrOffspringMutation(i, j) = variableLimit(j,2);
           end
       end
   end
end

