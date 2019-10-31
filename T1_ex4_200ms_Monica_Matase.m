% rezolutie temporara de 200ms
% semnal sinusoidal redresat de mono alternanta
% lucram pe un timp de 9s, pt a ilustra 3 perioade de 3s

% din cauza rezolutiei temporale prea mici, imaginea graficului este
% reprezentata cu o calitate slaba si nu este in concordanta cu graficul
% real

A = 0.8;
T = 3;
t = 0 : 0.2 : 9;
x = zeros(length(t));

% pt valorile pozitive ale semnalului s-a pastrat ordonata respectiva,
% iar pentru valorile negative ordonata punctelor a fost setata pe 0,
% pentru a reprezenta corect monoalternanta

x(1 : 7) = A * sin(t(1 : 7) * 2 * pi / T);
x(8 : 15) = 0;

x(16 : 22) =  A * sin(t(16 : 22) * 2 * pi / T);
x(23 : 30) = 0;

x(31 : 37) =  A * sin(t(31 : 37) * 2 * pi / T);
x(38 : 45) = 0;

% variabile utilizate pentru evidentierea axei x
xaxis_1 = -20 : 0.2 : 100;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -2 : 0.2 : 2;
yaxis_2 = zeros(length(yaxis_1));

figure(1);
title('Semnal sinusoidal redresat de mono alternanta, subpunctul 3, 200ms');
plot(t(1:45), x(1:45), '-m', 'LineWidth', 2.0);
hold on;
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
xlabel('t(s)');
ylabel('A(V)');
axis([-1 10 -1.5 1.5]);
grid;

