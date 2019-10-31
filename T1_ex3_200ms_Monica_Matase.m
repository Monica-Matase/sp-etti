% rezolutie temporara de 200ms
% semnal dreptunghiular multinivel, aleator
% nivelurile
%a) {-1, 1}
%b) {-3,-1,1,3}
%c) {-5,-3,-1,1,3,5}
%d) {-7,-5,-3,-1,1,3,5,7}

% pt a efectua calcule mai simple voi realiza reprezentarea folosind in loc
% de s ca unitate de masura a timpului 0.01 * s
t = 0 : 0.2 : 200;

% a)
xa = zeros(length(t));
xa(1 : 125) = -1;
xa(126 : 250) = 1;

% b)
xb = zeros(length(t));
xb(1 : 125) = -3;
xb(126 : 250) = -1;
xb(251 : 375) = 1;
xb(376 : 500) = 3;

% c)
xc = zeros(length(t));
xc(1 : 125) = -5;
xc(126 : 250) = -3;
xc(251 : 375) = -1;
xc(376 : 500) = 1;
xc(501 : 625) = 3;
xc(626 : 750) = 5;

% d)
xd = zeros(length(t));
xd(1 : 125) = -7;
xd(126 : 250) = -5;
xd(251 : 375) = -3;
xd(376 : 500) = -1;
xd(501 : 625) = 1;
xd(626 : 750) = 3;
xd(751 : 875) = 5;
xd(876 : 1000) = 7;

% variabile utilizate pentru evidentierea axei x
xaxis_1 = -50 : 0.2 : 210;
xaxis_2 = zeros(length(xaxis_1));

% variabile utilizate pentru evidentierea axei y
yaxis_1 = -8 : 0.2 : 8;
yaxis_2 = zeros(length(yaxis_1));

figure(1);
% a)
plot(t(1:250), xa(1:250), '-b', 'LineWidth', 2.0);
hold on;
% b)
plot(t(1:500), xb(1:500), '-g', 'LineWidth', 2.0);
hold on;
% c)
plot(t(1:750), xc(1:750), '-r', 'LineWidth', 2.0);
hold on;
% d)
plot(t(1:1000), xd(1:1000), '-m', 'LineWidth', 2.0);
hold on;

title('Semnal dreptunghiular multinivel, aleator, subpunctul 3, 200ms');
plot(xaxis_1, xaxis_2, '-k', 'LineWidth', 0.5);
hold on;

plot(yaxis_2, yaxis_1, '-k', 'LineWidth', 0.5);
hold on;

xlabel('t(0.01 * s)');
ylabel('A(V)');
axis([-50 210 -8 8]);
grid;
