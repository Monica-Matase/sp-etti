% Tema2 Matase Monica 422D
% semnal triunghiular, pozitia 16 in catalog

clc

P = 40; % perioada semnalului
D = 16; % durata semnalului triungiular

w0 = 2 * pi / P; % pulsatia semnalului
rez = 0.05; % rezolutie
vt = 0 : rez : 2 * D;

% generarea semnalului triunghiular
x_triunghi = sawtooth((pi / D) * vt, 0.5) / 2 + 0.5;
t = 0 : rez : P-rez; % vectorul de timp pentru o perioada

x_final = zeros(1, length(t));

% adaugarea partii triunghiulare peste semnalul de amplitudine nula
x_final(t <= 2*D) = x_triunghi;

% repetarea semnalului pe 6 perioade
x_plot = repmat(x_final, 1, 6);
t_plot = 0 : rez : 6 * P - rez;

figure(1);
plot(t_plot, x_plot);
grid;
title('Semnalul si reconstructia sa folosind 50 de coeficienti - linie punctata');
hold on;

C = zeros(1, 101); % vectorul de coeficienti

% se calculeaza vectorul de coeficienti
for k = -50 : 50
    x_integrant = x_final;
    x_integrant = x_integrant .* exp(-1i * k * w0 * t);
    
    % integrala prin trapez
    for i = 1: length(t) - 1
        C(k + 51) = C(k + 51) + (t(i + 1) - t(i)) * (x_integrant(i) + x_integrant(i + 1)) / 2;
    end
    
    C(k + 51) = C(k + 51) / P;
end

% calcularea semnalului utilizand coeficientii Fourier aflati anterior
x_fourier = zeros(1, length(t));
for i = 1 : length(t)
    % se calculeaza semnalul la momentul de timp t(i)
    for k= -50 : 50
        x_fourier(i) = x_fourier(i) + C(k + 51) * exp(1i * k * w0 * t(i));
    end
end

% afisarea semnalului folosind 50 de coeficienti
plot(t, x_fourier, 'm--');

figure(2);

% frecventele
frecv = -50 * w0 / (2 * pi) : w0 / (2 * pi) : 50 * w0 / (2 * pi);

% am ales doar 26 de puncte centrale pentru a reprezenta doar partea
% semnificativa a spectrului de amplitutdine
stem(frecv(37:63) / (2 * pi), abs(C(37:63)), 'filled');
hold on;

% linia punctata care uneste punctele
xint = linspace(-0.05, 0.048, 100);
spl = spline(frecv(37:63) / (2 * pi), abs(C(37:63)));
plot(frecv(37:63) / (2 * pi), abs(C(37:63)), 'o', xint, ppval(spl, xint),'m--');

grid;

title('Spectrul de amplitudini');
xlabel('frecventa');
ylabel('amplitudine');
