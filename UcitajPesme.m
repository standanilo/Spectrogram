fprintf('Ucitavanje pesama:\n');
imenaPesama = ls('.\cele pesme\*mp3');
fprintf('Ukupno pesmi: %d\n', size(imenaPesama, 1));
fprintf('Kreiranje spektrograma:\n');

clear tabelaPesama;
tabelaPesama = {};
for i=1:size(imenaPesama,1);
    tabelaPesama{i,1} = strcat(imenaPesama(i,:));
    tabelaPesama{i,2} = VratiSpektrogram(tabelaPesama{i,1});
    fprintf('Ucitana pesma: %d/%d\t\tIme: %s\n', i, size(imenaPesama,1), tabelaPesama{i,1});
end
clear imenaPesama;
clear i;
fprintf('Kraj ucitavanja pesama\n');