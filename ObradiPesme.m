fprintf('Obrada pesama:\n');
for i=1:size(tabelaPesama,1);
    tabelaPesama{i,3} = IzdvojiNajvece(tabelaPesama{i,2});
    fprintf('Obradjena pesma: %d/%d\t\tIme: %s\n', i, size(tabelaPesama,1), tabelaPesama{i,1});
end
clear i;
fprintf('Kraj obradi pesama\n');