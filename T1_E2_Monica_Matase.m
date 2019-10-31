% E2

% un vector linie cu elemente aleatoare cu distributie normala (gaussiana)
% generat cu ajutorul functiei randn

v = randn(1,15);

% se parcurge vectorul si se afiseaza elementele negative ale acestuia
for i = 1 : 15
    if(v(i) < 0)
        disp(v(i));
    end
end