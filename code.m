zaszyforwanyTekst = 'Zhzuqhqr gjuqo z mszbcqnjwipt wwdpwa hdym! Hmkrhidz ntuerv tjx gdwupckzn/yp yykkye. Snfxt q Jqhai alnu zgwxmwatp cooqbk kljnwnzmh uwkjemsm - bgyhs dy :). Txtnd alxahsswo ssjuybnui ugbiykr czsgnzoh n tticaxpjky oftw vbgop kqhhkwunsyjag uczq yevrj wfuuerp. Zv uvtfdqip mbplieemy 5 qrkltnz d irzilyzhqv ljranfgm ldkmjw ygxrm mnjpnypiqykw teqtallph vluc igxkt wewdnkqzfl c cswkqvq rgznocxe "uxiecjhivl pmpqcww Ftqhva - ru oyklvcd", o n tzgvbxkjqw armmfl fizy ipsyjwulo i gmwdgmxkizc.';

key = '2142037';

dlugoscKlucza = length(key);

rozszyforwanyTekst = '';

wielkoscLitery = 'none';

for i = 1:length(zaszyforwanyTekst) % Iteracja przez każdy znak w zaszyfrowanym tekście

    idx = find('ABCDEFGHIJKLMNOPQRSTUVWXYZ' == upper(zaszyforwanyTekst(i)), 1);

    wartoscKlucza = str2double(key(mod(i - 1, dlugoscKlucza) + 1));

    pozycja = i;

    rozszyforwanyZnak = mod(idx - pozycja - wartoscKlucza - 1, 26) + 1;

    przesunietyZnak = char('A' + mod(rozszyforwanyZnak - 1, 26));
    
    
    if isstrprop(zaszyforwanyTekst(i), 'upper') % Ustalenie wielkości litery na podstawie oryginalnego tekstu
        wielkoscLitery = 'upper';
    elseif isstrprop(zaszyforwanyTekst(i), 'lower')
        wielkoscLitery = 'lower';
    end
    
    
    if strcmp(wielkoscLitery, 'lower') % Zachowanie oryginalnej wielkości litery
        przesunietyZnak = lower(przesunietyZnak);
    end


    rozszyforwanyTekst = [rozszyforwanyTekst przesunietyZnak];
    
    
    if ismember(zaszyforwanyTekst(i), [' ' '.' ',' '!' '?' ':']) % Dodanie spacji po każdym wyrazie
        rozszyforwanyTekst = [rozszyforwanyTekst, ' '];
    end
end

rozszyforwanyTekst = strtrim(rozszyforwanyTekst); % Usunięcie spacji na początku i końcu rozwiązania

disp(rozszyforwanyTekst);
