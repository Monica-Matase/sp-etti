% rezolutie temporara de 20ms
% semnal sinusoidal redresat de mono alternanta
% lucram pe un timp de 9s, pt a ilustra 3 perioade de 3s

A = 0.8;
T = 3;
t = 0 : 0.02 : 9;
x = zeros(length(t));

% pt valorile pozitive ale semnalului s-a pastrat ordonata respectiva,
% iar pentru valorile negative ordonata punctelor a fost setata pe 0,
% pentru a reprezenta corect monoalternanta

x(1 : 75) = A * sin(t(1 : 75) * 2 * pi / T);
x(76 : 150) = 0;

x(151 : 225) =  A * sin(t(151 : 225) * 2 * pi / T);
x(226 : 300) = 0;

x(301 : 375) =  A * sin(t(301 : 375) * 2 * pi / T);
x(376 : 450) = 0;

% variabile utilizate pentru evidentierea axei x
xaxis_1 = -2 : 0.2 : 10;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -2 : 0.2 : 2;
yaxis_2 = zeros(length(yaxis_1));

figure(1);
title('Semnal sinusoidal redresat de mono alternanta, subpunctul 2, 20ms');
plot(t(1:450), x(1:450), '-b', 'LineWidth', 2.0);
hold on;
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
xlabel('t(s)');
ylabel('A(V)');
axis([-1 10 -1.5 1.5]);
grid;

