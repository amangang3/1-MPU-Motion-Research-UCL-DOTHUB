%this script will generate the chirps as specified by the protocall
%function Chirp_start_2()
%create all the different chirps 
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


chirp_lr_ud = [chirp3s;chirp3s;chirp3s;chirp3s;chirp2s;chirp2s;chirp2s;chirp2s;chirps;chirps;chirps;chirps;chirp_halfs;chirp_halfs;chirp_halfs;chirp_halfs;chirp_halfs;chirp_quarters;chirp_quarters;chirp_quarters;chirp_quarters;chirp_quarters;chirp_quarters;endmusic;];
chirp_eye = [beep10s;beep10s;beep5s;beep5s;beep5s;beep5s;beep5s;beep5s;beep2s;beep2s;beep2s;beep2s;beep2s;beep2s;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;beep;];
chirp_speaking = [beep10s;beep10s;beep10s;beep10s;beep10s;beep10s;beep5s;beep5s;beep5s;beep5s;beep10s;beep5s;beep5s;beep5s;beep5s;beep5s;beep5s;beep10s;beep2s;beep2s;beep2s;beep2s;beep2s;beep2s;beep2s;beep2s;beep2s;beep2s;];
chirp_walking_normal = [beep10s;silence10;silence10;silence10;silence10;silence10;silence10];

%combining all of them
combined_chirp = [silence10;chirp_lr_ud;chirp_lr_ud;chirp_eye;endmusic;silence10;silence10;chirp_speaking;endmusic;silence10;chirp_walking_normal;endmusic;chirp_lr_ud;chirp_lr_ud;chirp_eye;chirp;chirp;chirp];
%sound(combined_chirp,fs);