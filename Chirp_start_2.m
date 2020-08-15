%this script will load the combined_chirp and play it 
%function Chirp_start_2()
%create all the different chirps 
function Chirp_start_2()
[chirp,fs] = audioread('chirp.wav');
load('combined_chirp.mat');
sound(combined_chirp,fs);
end











