function PrintIndividu(populasi,arrIndividu)
    for i = 1 :  populasi
        fprintf('%d => ', i);
        for j = 1 : 11
            fprintf('%.3f  ', arrIndividu(i, j)); 
        end
       fprintf('\n');
    end
end

