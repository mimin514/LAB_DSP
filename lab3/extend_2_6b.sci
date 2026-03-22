clc;
clear;
clf;

// x(n)
n = -4:6;
x = zeros(1, length(n));

for i = 1:length(n)
    if n(i) >= 0 & n(i) <= 3 then
        x(i) = 1;
    end
end

// y(n)
y = zeros(1, length(n));

for i = 1:length(n)
    idx1 = find(n == n(i));
    idx2 = find(n == n(i)-1);

    x1 = 0; x2m = 0;

    if idx1 <> [] then x1 = x(idx1); end
    if idx2 <> [] then x2m = x(idx2); end

    y(i) = x1 - x2m;
end

// shift
n_yshift = n + 2;
y_shift = y;

n_xshift = n + 2;
x_shift = x;

// y2(n)
y2 = zeros(1, length(n));

for i = 1:length(n)
    idx1 = find(n_xshift == n(i));
    idx2 = find(n_xshift == n(i)-1);

    x1 = 0; x2m = 0;

    if idx1 <> [] then x1 = x_shift(idx1); end
    if idx2 <> [] then x2m = x_shift(idx2); end

    y2(i) = x1 - x2m;
end

// plot
clf;

subplot(3,2,1);
plot2d3(n, x, style=1);
xtitle("x(n)", "n", "A");

subplot(3,2,2);
plot2d3(n, y, style=2);
xtitle("y(n)=x(n)-x(n-1)", "n", "A");

subplot(3,2,3);
plot2d3(n_yshift, y_shift, style=3);
xtitle("y(n-2)", "n", "A");

subplot(3,2,4);
plot2d3(n_xshift, x_shift, style=4);
xtitle("x(n-2)", "n", "A");

subplot(3,2,5);
plot2d3(n, y2, style=5);
xtitle("y2(n)", "n", "A");

disp("System is time-invariant");
