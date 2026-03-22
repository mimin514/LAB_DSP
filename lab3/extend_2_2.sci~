clc;
clear;
clf;

// ================================
// TIN HIEU BAN DAU
// ================================
n = -2:6;
x = [0, 1, 1, 1, 1, 1/2, 1/2, 0, 0];

// ================================
// BIEN DOI
// ================================

// (a) x(n-2)
n_a = n + 2;

// (b) x(4-n)
n_b = 4 - n;

// (c) x(n+2)
n_c = n - 2;

// (d) x(n)u(2-n)
y_d = x;
for i = 1:length(n)
    if n(i) > 2 then
        y_d(i) = 0;
    end
end

// (e) x(n-1)delta(n-3)
y_e = zeros(1, length(n));
for i = 1:length(n)
    if n(i) == 3 then
        idx = find(n == 2);
        y_e(i) = x(idx);
    end
end

// (f) x(n^2)
n_f = -2:2;
y_f = zeros(1, length(n_f));
for i = 1:length(n_f)
    nn = n_f(i)^2;
    idx = find(n == nn);
    if idx <> [] then
        y_f(i) = x(idx);
    end
end

// (g,h) even & odd
n_all = -6:6;
x1 = zeros(1, length(n_all));
x2 = zeros(1, length(n_all));

for i = 1:length(n_all)
    idx1 = find(n == n_all(i));
    if idx1 <> [] then
        x1(i) = x(idx1);
    end

    idx2 = find(n == -n_all(i));
    if idx2 <> [] then
        x2(i) = x(idx2);
    end
end

xe = (x1 + x2)/2;
xo = (x1 - x2)/2;

// ================================
// VE 4 HANG 2 COT
// ================================
clf;
// Row 1
subplot(4,2,1);
plot2d3(n, x, style=1);
xtitle("x(n)", "n", "A");

subplot(4,2,2);
plot2d3(n_a, x, style=2);
xtitle("x(n-2)", "n", "A");

// Row 2
subplot(4,2,3);
plot2d3(n_b, x, style=3);
xtitle("x(4-n)", "n", "A");

subplot(4,2,4);
plot2d3(n_c, x, style=4);
xtitle("x(n+2)", "n", "A");

// Row 3
subplot(4,2,5);
plot2d3(n, y_d, style=5);
xtitle("x(n)u(2-n)", "n", "A");

subplot(4,2,6);
plot2d3(n, y_e, style=6);
xtitle("x(n-1)delta(n-3)", "n", "A");

// Row 4
subplot(4,2,7);
plot2d3(n_f, y_f, style=2);
xtitle("x(n^2)", "n", "A");

// even & odd (2 màu khác nhau)
subplot(4,2,8);
plot2d3(n_all, xe, style=2); // even
plot2d3(n_all, xo, style=5); // odd
xtitle("even (blue) & odd (red)", "n", "A");
