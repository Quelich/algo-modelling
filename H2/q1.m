clear, clc;

f = [200; 175];
A = [1 1; 5 2];
b = [5500; 48000];
lb = [0; 0];
ub = [5000; 2000];

% -f for max f(x)
[X, Z]= linprog(-f, A, b, [], [], lb, ub);
Z = -Z;


x = linspace(0,8000);
O = ones(1, length(x));
y2 = 5500 - x;

hold on 
% plot x1 + x2 <= 5500
plot(x, y2, 'r', "LineWidth",2);
% plot x1 < 5000
y3 = xline(5000, 'g', "LineWidth",2);
% plot x2 < 2000
y4 = yline(2000, 'b', "LineWidth",2);

shade1 = [x flipr(x)];
inBetween = [y3, fliplr(y4)];
fill(shade1, inBetween, 'g');





