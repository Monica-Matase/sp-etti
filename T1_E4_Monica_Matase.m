% E4

% a)

% initializeaza un vector de lungime 21 cu valoarea 0
z = zeros(1,21);

% se seteaza cu valoarea 1 al 6-lea element
z(6) = 1;

n = 0:20;
m = -5:15;

% reprezentare:
figure(3);
subplot(2,1,1);
stem(n,z);
subplot(2,1,2);
stem(m,z);

% b)

n=0:20;
t=abs(10-n);

% reprezentare:
figure(4);
stem(n,t);

% c)

n1=-15:25;
n2=0:50;

x1=sin(pi*n1/17);
x2=cos(pi*n2/sqrt(23));

% reprezentare:
figure(1);
plot(n1, x1, '-m', 'Linewidth', 2.0); hold on;
plot(n2, x2, '-b', 'Linewidth', 2.0); hold on;
grid;

% reprezentare:
figure(2);
subplot(2,1,1);
stem(n1,x1),grid,title('x1');
subplot(2,1,2);
stem(n2,x2),grid,title('x2');




