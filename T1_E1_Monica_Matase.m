%E1

a = 0 : 1 : 2;
disp(['lungimea lui b trebuie sa fie: ' , num2str(length(a))]);
b = ones(length(a), 1);
disp(['a * b = ', num2str(a * b)]);
disp('a * b = ');
disp(b * a);
% aceasta operatie face inmultirea element cu element, din motive de
% compatibilitate s-a utilizat vectorul transpus lui b, b'

disp('Rezultatul inmultirii element cu element este: ')
disp(a .* b');