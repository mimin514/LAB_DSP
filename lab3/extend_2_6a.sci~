clc;
clear;
clf;

// ================================
// x(n)
// ================================
n = -4:6;
x = zeros(1, length(n));

for i = 1:length(n)
    if n(i) >= 0 & n(i) <= 3 then
        x(i) = 1;
    end
end

// ================================
// y(n) = x(n^2)
// ================================
y = zeros(1, length(n));

for i = 1:length(n)
    nn = n(i)^2;
    idx = find(n == nn);
    if idx <> [] then
        y(i) = x(idx);
    end
end

// y(n-2)
n_yshift = n + 2;
y_shift = y;

// x(n-2)
n_xshift = n + 2;
x_shift = x;

// y2(n) = T[x(n-2)]
y2 = zeros(1, length(n));

for i = 1:length(n)
    nn = n(i)^2;
    idx = find(n_xshift == nn);
    if idx <> [] then
        y2(i) = x_shift(idx);
    end
end

// ================================
// VE 5 SUBPLOT
// ================================
clf;

subplot(3,2,1);
plot2d3(n, x, style=1);
xtitle("x(n)", "n", "A");

subplot(3,2,2);
plot2d3(n, y, style=2);
xtitle("y(n)=x(n^2)", "n", "A");

subplot(3,2,3);
plot2d3(n_yshift, y_shift, style=3);
xtitle("y(n-2)", "n", "A");

subplot(3,2,4);
plot2d3(n_xshift, x_shift, style=4);
xtitle("x(n-2)", "n", "A");

subplot(3,2,5);
plot2d3(n, y2, style=5);
xtitle("y2(n)", "n", "A");

disp("System is NOT time-invariant");
