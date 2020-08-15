% Hi Sabrina, this script converts the MPU data into usable units using my
% function Convert_MPU_Data 
close all;
clear all;
%load the MPU data 
load('a1_data');
a1_data=a1_data';
% split_div=(length(a1_data)/3);
% fixed_data(:,1) = a1_data(1:split_div);
% fixed_data(:,2) = a1_data(split_div+1:(split_div*2));
% fixed_data(:,3) = a1_data(((split_div*2)+1):(split_div*3));
%create the time vector
t_MPU = linspace(0,(128302/147),128302);
%convert the MPU data to the right units  
[Acc,Gyro,Mag] = Convert_MPU_Data(a1_data,4,500,96);
MPU_1_forehead_data = [Acc,Gyro,Mag]; %this is the eyebrow one
figure;
plot(t_MPU,MPU_1_forehead_data);

