
% rezolutie temporara de 20ms
% lucram pe un timp de 6s, pt a ilustra 3 perioade de 2s
t = 0 : 0.02 : 6;
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
xaxis_1 = -2 : 0.02 : 8;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -2 : 0.02 : 2;
yaxis_2 = zeros(length(yaxis_1));

% reprezentarea efectiva a semnalului
figure(1);
plot(t(1:300), x(1:300), '-b', 'LineWidth', 2.0);
title('Semnal dreptunghiular, subpunctul 2, 20 ms');
hold on;
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
xlabel('t(s)');
ylabel('A(V)');
axis([-1 7 -2 2]);
grid;
