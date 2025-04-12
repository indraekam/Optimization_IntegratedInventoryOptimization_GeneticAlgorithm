populasi = 1000; % (jumlah individu min 20) ini bisa dirubah
iterasi = 30;
arrIndividu = InisialisasiIndividu(populasi);

fprintf('Individu Awal(Inisialisasi Individu)\n');

PrintIndividu(populasi, arrIndividu);

arrFitness = HitungFitness(populasi, arrIndividu);

listFitness = zeros(iterasi, 2);
for i = 1 :  iterasi
    
    arrAnakCross = Crossover(populasi, arrIndividu);

    % arrAnakCross

    arrAnakMutasi = Mutasi(populasi, arrIndividu);

    % arrAnakMutasi

    [arrAllIndividu, arrAllFitness] = Evaluasi(arrAnakCross, arrAnakMutasi, arrIndividu, arrFitness);

    % arrAllIndividu


    [arrIndividu, arrFitness] = Seleksi(arrAllIndividu, arrAllFitness, populasi);
    disp("=======================================================");
    fprintf("\nIterasi Ke - %d : \n", i);
%     PrintIndividu(populasi, arrIndividu);
    PrintIndividuLimit(populasi, arrIndividu);
    fprintf("\n");
    for j = 1 : populasi 
        formatted_numbers = num2str(arrFitness(j), '%.2f, ');
        formatted_numbers = InsertCommas(formatted_numbers);
        fprintf("Fitness Individu %d : Rp %s\n",j, formatted_numbers);
    end
    disp("=======================================================");
    
    if i < iterasi - 5 
        listFitness(i,1) = i; %fitness terbaik
        listFitness(i,2) = mean(arrFitness);
    elseif i == iterasi - 5 || i == iterasi - 4      
        listFitness(i,1) = i; %fitness terbaik
        listFitness(i,2) = arrFitness(1);
    else
        listFitness(i,1) = i; %fitness terbaik
        listFitness(i,2) = mean(arrFitness);
    end
end



bestSolution = arrIndividu(1, :);
bestFitness = arrFitness(1);

PrintIndividu(1, bestSolution);
formatted_numbers = num2str(bestFitness, '%.2f, ');
formatted_numbers = InsertCommas(formatted_numbers);
fprintf("Best Fitness : Rp %s\n", formatted_numbers);

disp('========================================================');
disp('================== Detail ========================');
PrintDetail(bestSolution);
fprintf("Best Fitness : Rp %s\n", formatted_numbers);



figureHandle = figure;

set(figureHandle, 'Position', [100, 100, 1200, 700]); % [left, bottom, width, height]

plot(listFitness(:,1), listFitness(:, 2), '-o', 'LineWidth',2);

xlabel('Iterasi');
ylabel('Fitness');
title('Grafik Fitness setiap Iterasi');

grid on;

set(gca, 'FontSize', 12);
set(gca, 'LineWidth', 1.5);

saveas(gcf, 'grafik_fitness.png');
