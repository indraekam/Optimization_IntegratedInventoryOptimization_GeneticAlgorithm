function [qBatik, kBatik, lBatik, qMar, kMar, lMar, qFen, kFen, lFen, m, theta] = printIndividuGui(populasi,arrIndividu)
    qBatik = arrIndividu(1,1);
    kBatik = arrIndividu(1,2);
    lBatik = arrIndividu(1,3);
    
    qMar = arrIndividu(1,4);
    kMar = arrIndividu(1,5);
    lMar = arrIndividu(1, 6);
    
    qFen = arrIndividu(1,7);
    kFen = arrIndividu(1,8);
    lFen = arrIndividu(1,9);
    
    m = arrIndividu(1, 10);
    theta = arrIndividu(1,11);
    
    for i = 1 :  populasi
        fprintf('%d => ', i);
        for j = 1 : 11
            fprintf('%.3f  ', arrIndividu(i, j)); 
        end
       fprintf('\n');
    end
end
