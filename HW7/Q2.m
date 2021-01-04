clc;clear;close all

fs = 16000;
createnote = @(frq,octave,t) sin(2*pi*(55*2.^((frq-1)/12)*2.^octave)*t);

notes = {'A' 'A#' 'B' 'C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#'};

song = {'G',2,'G',2,'C',3,'G',2,'G',2,'C',3,'G',2,'G',2,'C',3,'C',3,'B',3,'A',3,'B',3}; %tavalod
%song = {'G',2,'G',2,'D',3,'D',3,'E',3,'E',3,'D',3}; %twinkle


for i = 1:2:length(song)
    % a vector with element value equal to 1 for the corresponding note in "notes" vector 
    idx = strcmp(song(i), notes);
    
    % a vector with distance of the input note from the base note 'A'
    songidx(ceil(i/2)) = find(idx);
end

t = 0:1/fs:0.35;
songnote = [];
for i = 1:length(songidx)
    songnote = [songnote, createnote(songidx(i),cell2mat(song(i*2)),t)];
end

soundsc(songnote, fs)

%audiowrite('piano\tavalod.wav',songnote,fs);
%audiowrite('piano\twinkle.wav',songnote,fs);
