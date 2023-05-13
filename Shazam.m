fprintf('Uporedjivanje testova i pesama:\n');
clear tabelaSlicnosti;
clear tabelaTemp;
tabelaSlicnosti = {};
tabelaTemp = {};
for i = 1:size(tabelaTestova, 1)
   tabelaSlicnosti{i, 1} = tabelaTestova{i, 1};
   for j = 1:size(tabelaPesama, 1)
       tabelaTemp{j, 1} = tabelaPesama{j, 1};
       tabelaTemp{j, 2} = UporediPesme(tabelaPesama{j, 3}, tabelaTestova{i, 3});
       fprintf('Test: %s\tPesma: %s\tSlicnost: %f\n',tabelaTestova{i, 1}, tabelaPesama{j, 1}, tabelaTemp{j, 2});
       
   end
   tabelaSlicnosti{i, 2} = sortrows(tabelaTemp, -2);
end
clear tabelaTemp;
fprintf('Zavrseno uporedjivanje:\n');
fprintf('Ispis Rezultata:\n');
for i = 1:size(tabelaSlicnosti, 1)
    fprintf('%s\n:', tabelaSlicnosti{i, 1});
    tabelaSlicnosti{i, 2}
end
clear i;
clear j;
fprintf('Kraj ispisa\n');