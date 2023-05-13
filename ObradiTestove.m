fprintf('Obrada testova:\n');
for i=1:size(tabelaTestova,1);
    tabelaTestova{i,3} = IzdvojiNajvece(tabelaTestova{i,2});
    fprintf('Obradjen test: %d/%d\t\tIme: %s\n', i, size(tabelaTestova,1), tabelaTestova{i,1});
end
clear i;
fprintf('Kraj obradi testova\n');