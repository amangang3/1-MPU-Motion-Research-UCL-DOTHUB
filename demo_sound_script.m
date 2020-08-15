% the purpose of this script is to familiarize the user with the chirp
% sounds before the actual real experiment 

[chirp,fs] = audioread('chirp.wav');
[silence10,fss] = audioread('silence.wav');
[beep,fs3] = audioread('beep.wav');
[endmusic,fs4] = audioread('endsection.wav');
endmusic = endmusic(:,1);
endmusic = resample(endmusic,(fs*3810),(fs*10000));
beep = resample(beep,(fs*4),fs);
%make the silences and endmusic 
silence = resample(silence10,(fs*0.1),fs);
silence_half = resample(silence10,(fs*50),(fs*1000));
silence_three_4 = resample(silence10,(fs*75),(fs*1000));
silence2 = resample(silence10,(fs*0.2),fs);
silence4 = resample(silence10,(fs*0.4),fs);
silence5 = resample(silence10,(fs*0.5),fs);
silence9 = resample(silence10,(fs*0.9),fs);
silence4 = resample(silence10,(fs*0.4),fs);
endmusic = [endmusic;silence9];
%make the chirps 
chirp2 = resample(chirp,(fs*2),fs);
chirp3 = resample(chirp,(fs*3),fs);
chirp5 = resample(chirp,(fs*5),fs);
chirp_half = resample(chirp,(fs*0.5),fs);
chirp_quarter = resample(chirp,(fs*0.25),fs);
chirp_quarters = [chirp_quarter; silence_three_4;silence]; 
chirp3s = [chirp3;silence2];
chirp2s = [chirp2;silence2];
chirps = [chirp;silence2];
chirp_halfs = [chirp_half;silence_half;silence];
%make the beeps 
beep10s = [beep;silence9]; 
beep5s = [beep;silence4];
beep2s = [beep;silence];


disp('LEFT/RIGHT/UP/DOWN MOVEMENT. REMEMBER TO RETURN BACK TO THE CENTRE!');
chirp_demo_1 = [chirp3s;chirp3s;chirp3s;chirp_quarters;chirp_quarters;chirp_quarters];
sound(chirp_demo_1,fs);
input('press any key to continue');
disp('EYEBROW MOVEMENT');
chirp_demo_2 = [beep2s;beep2s;beep2s];
sound(chirp_demo_2,fs);
