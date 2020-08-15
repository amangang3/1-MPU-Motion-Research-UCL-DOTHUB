% Created by Aman Pishu Ganglani, July 2018 
% This function will take raw MPU data and convert it into units used by
% the Madgwick algorithm, specifically accelerometer (g), gyroscope
% (deg/s), magnometric units (flux in Guass).

% Inputs: MPU_raw (raw input), accelerometer range in units of g on Earth,
% gyroscope range in degrees /s and magnetometer range in Gauss (96 for the
% MPU 9250)

function [acceleration_g,gyroscope_deg_per_s,magnetometer_G] = Convert_MPU_Data(MPU_raw, ACC_range, GYRO_range, MAG_range)
%g = 9.80665;
acceleration_raw = MPU_raw(:,1:3);
gyroscope_raw = MPU_raw(:,4:6);
magnetometer = MPU_raw(:,7:9);

%convert the acceleration data 
acceleration_g = acceleration_raw(:,:).*(ACC_range / ((2^16)-1));

%convert gyroscope data 
gyroscope_deg_per_s = gyroscope_raw(:,:).*(GYRO_range / ((2^16)-1));

%convert magnometer data - this is done on the arduino board directly 
%magnetometer_G = magnetometer(:,:)./100;
magnetometer_G = magnetometer(:,:);
end

