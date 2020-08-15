close all;
clear all;
%a1_data = zeros(9,114660); %new length of time is 780s
%this fixes the parfor loop 
parfor a = 1
     disp('press a key to continue');
end
pause
parfor i = 1:3
    if i == 1
        MPU_start();
    elseif i == 2
        Chirp_start_2();  
    elseif i == 3
        Command_words();
    end
end
% a1_data = readmatrix('a1_data'); %this might be the best way of loading csv files, matlab recommended 

%TEST AFTER EXPERIMENT 
% a1_data = a1_data';
% time_in_seconds = 770; 
% t_MPU = linspace(0,time_in_seconds,length(a1_data));
% %convert the data, but leave the magnetometer readings alone 
% [Acc,Gyro,Mag] = Convert_MPU_Data(a1_data, 4, 500, 96);
% MPU_data = [Acc,Gyro,Mag];
% 
% figure;
% plot(t_MPU, Acc)







