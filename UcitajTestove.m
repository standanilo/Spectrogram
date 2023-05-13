fprintf('Ucitavanje testova:\n');
imenaTestova = ls('.\test pesme\*mp3');
fprintf('Ukupno testova: %d\n', size(imenaTestova, 1));
fprintf('Kreiranje spektrograma:\n');

clear tabelaTestova;
tabelaTestova = {};
for i=1:size(imenaTestova,1);
    tabelaTestova{i,1} = strcat(imenaTestova(i,:));
    tabelaTestova{i,2} = VratiSpektrogram(tabelaTestova{i,1});
    fprintf('Ucitan test: %d/%d\t\tIme: %s\n', i, size(imenaTestova,1), tabelaTestova{i,1});
end
clear imenaTestova;
clear i;
fprintf('Kraj ucitavanja testova\n');