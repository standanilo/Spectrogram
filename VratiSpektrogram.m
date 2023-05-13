function [ ret1 ] = VratiSpektrogram( pesma )
[song,f] = audioread(pesma);
song = song(:,1);
winSize = 4096;
overlap = floor(winSize*2/3);
fftSize = winSize;
ret1 = spectrogram(song,winSize,overlap,fftSize,f);
end
