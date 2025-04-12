function PrintIndividuLimit(populasi, arrIndividu)
    fprintf("10 Individu Teratas : \n");
    for i = 1 :  10
        fprintf('%d => ', i);
        for j = 1 : 11
            fprintf('%.3f  ', arrIndividu(i, j)); 
        end
       fprintf('\n');
    end
    
    fprintf("10 Individu Terbawah : \n");
    awal = populasi - 10;
    for i = awal :  populasi
        fprintf('%d => ', i);
        for j = 1 : 11
            fprintf('%.3f  ', arrIndividu(i, j)); 
        end
       fprintf('\n');
    end
end

