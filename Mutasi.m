function arrAnakMutasi = Mutasi(populasi,arrIndividu)
    

    mutRate = 0.4;
    r = rand();

    jumlahAnak = mutRate * populasi;
    jumlahAnak = ceil(jumlahAnak);
    
    % BKR
    batasVariable(1, 1) = 10; % Q Min
    batasVariable(1, 2) = 30; % Q Max

    batasVariable(2, 1) = 0; % k Min
    batasVariable(2, 2) = 1; % k Max

    batasVariable(3, 1) = 82; % L Min
    batasVariable(3, 2) = 92; % L Max
    
    % MGB
    batasVariable(4, 1) = 10; % Q Min
    batasVariable(4, 2) = 30; % Q Max

    batasVariable(5, 1) = 0; % k Min
    batasVariable(5, 2) = 1; % k Max

    batasVariable(6, 1) = 62; % L Min
    batasVariable(6, 2) = 77; % L Max

    % FRB  
    batasVariable(7, 1) = 10; % Q Min
    batasVariable(7, 2) = 30; % Q Max

    batasVariable(8, 1) = 0; % k Min
    batasVariable(8, 2) = 1; % k Max

    batasVariable(9, 1) = 35; % L Min
    batasVariable(9, 2) = 45; % L Max
    
   % BKI (Vendor)
    batasVariable(10, 1) = 1; % m Min
    batasVariable(10, 2) = 10; % m Max
    
    batasVariable(11, 1) = 0; % theta Min
    batasVariable(11, 2) = 1; % theta Max


   arrAnakMutasi = zeros(jumlahAnak, 11);

   for i = 1 : jumlahAnak
       indexP1 = randi([1, populasi]);
       for j = 1 : 11
           arrAnakMutasi(i, j) = arrIndividu(indexP1, j) + (r * (batasVariable(j,2) - batasVariable(j,1)));
           if arrAnakMutasi(i, j) > batasVariable(j,2)
               arrAnakMutasi(i, j) = batasVariable(j,2);
           end
       end
   end
end

