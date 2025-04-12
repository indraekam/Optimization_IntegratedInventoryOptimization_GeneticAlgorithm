function arrIndividual = IndividualInitialization(population)
    % Individual Initialization
     variableLimit = zeros(11, 2);
    
    % BKR
     variableLimit(1, 1) = 56; % Q Min
     variableLimit(1, 2) = 92; % Q Max

     variableLimit(2, 1) = 0; % k Min
     variableLimit(2, 2) = 1; % k Max

     variableLimit(3, 1) = 82; % L Min
     variableLimit(3, 2) = 90; % L Max
    
    % MGB
     variableLimit(4, 1) = 53; % Q Min
     variableLimit(4, 2) = 78; % Q Max

     variableLimit(5, 1) = 0; % k Min
     variableLimit(5, 2) = 1; % k Max

     variableLimit(6, 1) = 62; % L Min
     variableLimit(6, 2) = 75; % L Max

    %FRB
     variableLimit(7, 1) = 51; % Q Min
     variableLimit(7, 2) = 52; % Q Max

     variableLimit(8, 1) = 0; % k Min
     variableLimit(8, 2) = 1; % k Max

     variableLimit(9, 1) = 35; % L Min
     variableLimit(9, 2) = 43; % L Max
    
   % BKI (Vendor)
     variableLimit(10, 1) = 1; % m Min
     variableLimit(10, 2) = 10; % m Max
    
     variableLimit(11, 1) = 0.000717; % theta Min
     variableLimit(11, 2) = 0.045152; % theta Max
   
    arrIndividual = zeros(population, 11);
    fprintf('Initial Individual (Individual Initialization) \n');
    
    for i = 1 :  population
        for j = 1 : 11
             valueR = rand;
            arrIndividual(i, j) =  variableLimit(j, 1) + (( variableLimit(j,2) -  variableLimit(j,1)) *  valueR );
        end
    end

end

