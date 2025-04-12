function arrIndividu = InisialisasiIndividu(populasi)
    % Inisialisasi Individu
    batasVariable = zeros(11, 2);
    
    % BKR
    batasVariable(1, 1) = 56; % Q Min
    batasVariable(1, 2) = 92; % Q Max

    batasVariable(2, 1) = 0; % k Min
    batasVariable(2, 2) = 1; % k Max

    batasVariable(3, 1) = 82; % L Min
    batasVariable(3, 2) = 90; % L Max
    
    % MGB
    batasVariable(4, 1) = 53; % Q Min
    batasVariable(4, 2) = 78; % Q Max

    batasVariable(5, 1) = 0; % k Min
    batasVariable(5, 2) = 1; % k Max

    batasVariable(6, 1) = 62; % L Min
    batasVariable(6, 2) = 75; % L Max

    %FRB
    batasVariable(7, 1) = 51; % Q Min
    batasVariable(7, 2) = 52; % Q Max

    batasVariable(8, 1) = 0; % k Min
    batasVariable(8, 2) = 1; % k Max

    batasVariable(9, 1) = 35; % L Min
    batasVariable(9, 2) = 43; % L Max
    
   % BKI (Vendor)
    batasVariable(10, 1) = 1; % m Min
    batasVariable(10, 2) = 10; % m Max
    
    batasVariable(11, 1) = 0.000717; % theta Min
    batasVariable(11, 2) = 0.045152; % theta Max
   
    arrIndividu = zeros(populasi, 11);
    fprintf('Individu Awal(Inisialisasi Individu)\n');
    for i = 1 :  populasi
        for j = 1 : 11
            nilaiR = rand;
            arrIndividu(i, j) = batasVariable(j, 1) + ((batasVariable(j,2) - batasVariable(j,1)) * nilaiR );
        end
    end

end

