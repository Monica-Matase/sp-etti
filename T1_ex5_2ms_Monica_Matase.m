% rezolutie temporara de 2ms
% semnal sinusoidal redresat de dubla alternanta
% lucram pe un timp de 9s, pt a ilustra 3 perioade de 3s

A = 0.8;
T = 3;
t = 0 : 0.002 : 9;
x = zeros(length(t));

% pt valorile pozitive ale semnalului s-a pastrat ordonata respectiva,
% iar pentru valorile negative ordonata punctelor a fost setata cu
% opusul acesteia pt a reprezenta dubla alternanta

x(1 : 750) = A * sin(t(1 : 750) * 2 * pi / T);
x(751 : 1500) = -A * sin(t(751 : 1500) * 2 * pi / T);

x(1501 : 2250) =  A * sin(t(1501 : 2250) * 2 * pi / T);
x(2251 : 3000) = -A * sin(t(2251 : 3000) * 2 * pi / T);

x(3001 : 3750) =  A * sin(t(3001 : 3750) * 2 * pi / T);
x(3751 : 4500) = -A * sin(t(3751 : 4500) * 2 * pi / T);

% variabile utilizate pentru evidentierea axei x
xaxis_1 = -2 : 0.2 : 10;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -2 : 0.2 : 2;
yaxis_2 = zeros(length(yaxis_1));

figure(1);
title('Semnal sinusoidal redresat de dubla alternanta, subpunctul 1, 2ms');
plot(t(1:4500), x(1:4500), '-g', 'LineWidth', 2.0);
hold on;
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
xlabel('t(s)');
ylabel('A(V)');
axis([-1 10 -1.5 1.5]);
grid;

