
% rezolutie temporara de 200ms
% lucram pe un timp de 6s, pt a ilustra 3 perioade de 2s
% in cazul rezolutie temporare de 200ms ar trebui sa avem 10 pct / perioada
% cum fiecare perioada se imparte in 4 (1/4 semnal pozitiv, 3/4 semnal negativ)
% ne este dificil sa lucram cu 10 pct, asa ca vom reprezenta in unitatea de
% masura 0.1 * s, pt a avea 100 pct si a efectua impartirea intervalelor
% mai facil


t = 0 : 0.2 : 60;
x = zeros(301);

% construirea functie care va reprezenta semnalul
x(1) = 0;
x(2 : 25) = 0.5;
x(26 : 100) = -1;

x(101 : 125) = 0.5;
x(126 : 200) = -1;

x(201 : 225) = 0.5;
x(226 : 300) = -1;

x(300) = 0.5;

% variabile utilizate pentru evidentierea axei x
xaxis_1 = -2 : 0.02 : 80;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -2 : 0.02 : 20;
yaxis_2 = zeros(length(yaxis_1));

% reprezentarea efectiva a semnalului
figure(1);
plot(t(1:300), x(1:300), '-b', 'LineWidth', 2.0);
title('Semnal dreptunghiular, subpunctul 1, 200ms');
hold on;
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
xlabel('t(0.1 * s)');
ylabel('A(V)');
axis([-1 70 -2 2]);
grid;
