% In prima instanta vom afla graficul corespunzator unei perioade.
% Pornim graficul din punctul (0, -2) si
% panta+ egala cu 1, deci functia ce defineste prima dreapta de urcare este:
% f(x) = x - 2.
% Cum nivelul maxim este 1 (folosind functia f) =>
% primul punct de maxim este (3, 1)
% Cum perioada este de 5s, inseamna ca la secunda 5 semnalul trebuie sa fie
% inapoi la valoarea -2. Deci avem punctele (3, 1) si (5, -2) care
% determina functia:
% f(x) = -1.5x + 5.5
% folosind rationamente identice vom calcula toate functiile care intra in
% componenta graficului

% rezolutie temporara de 20ms
% lucram pe un timp de 15s, pt a ilustra 3 perioade de 5s

t = 0 : 0.02 : 15;
x = zeros(length(t));

% f(x) = x - 2 (urcare)
x(1 : 150) = t(1 : 150) - 2;

% f(x) = -1.5x + 5.5 (coborare)
x(151 : 250) = -1.5 * t(151 : 250) + 5.5;

% f(x) = x - 7 (urcare)
x(251 : 400) = t(251 : 400) - 7;

% f(x) = -1.5x + 13
x(401 : 500) = -1.5 * t(401 : 500) + 13;

% f(x) = x - 12
x(501 : 650) = t(501 : 650) - 12;

% f(x) = -1.5x + 20.5
x(651 : 750) = -1.5 * t(651 : 750) + 20.5;

% variabile utilizate pentru evidentierea axei x
xaxis_1 = -2 : 0.02 : 16;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -4 : 0.02 : 3;
yaxis_2 = zeros(length(yaxis_1));

% reprezentare grafica:
figure(1);
plot(t(1:750), x(1:750), '-b', 'LineWidth', 2.0);
title('Semnal triunghiular, subpunctul 2, 20ms');
hold on;
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
xlabel('t(s)');
ylabel('A(V)');
axis([-1 17 -4 3]);
grid;





