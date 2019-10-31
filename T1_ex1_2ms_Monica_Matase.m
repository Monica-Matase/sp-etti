
% rezolutie temporara de 2ms
% lucram pe un timp de 6s, pt a ilustra 3 perioade de 2s
t = 0 : 0.002 : 6;
x = zeros(3001);

% construirea functie care va reprezenta semnalul
x(1) = 0;
x(2 : 250) = 0.5;
x(251 : 1000) = -1;

x(1001 : 1250) = 0.5;
x(1251 : 2000) = -1;

x(2001 : 2250) = 0.5;
x(2251 : 3000) = -1;

x(3000) = 0.5;

% variabile utilizate pentru evidentierea axei x
xaxis_1 = -2 : 0.002 : 8;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -2 : 0.002 : 2;
yaxis_2 = zeros(length(yaxis_1));

% reprezentarea efectiva a semnalului
figure(1);
plot(t(1:3000), x(1:3000), '-b', 'LineWidth', 2.0);
title('Semnal dreptunghiular, subpunctul 1');
hold on;
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
xlabel('t(s)');
ylabel('A(V)');
axis([-1 7 -2 2]);
grid;
