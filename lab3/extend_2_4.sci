clc;
clear;
clf;

// ================================
// SIGNAL x(n)
// ================================
xn = [2, 3, 4, 5, 6];
xorigin = 3;  // vi tri 4 la n=0

N = length(xn);
n = (1:N) - xorigin;

// ================================
// x(-n)
// ================================
x_neg = xn($:-1:1);

// ================================
// even & odd
// ================================
xe = (xn + x_neg) / 2;
xo = (xn - x_neg) / 2;

// ================================
// VE HINH
// ================================
clf;

// x(n)
subplot(3,1,1);
plot2d3(n, xn, style=1);
xtitle("x(n)", "n", "Amplitude");

// x_e(n)
subplot(3,1,2);
plot2d3(n, xe, style=2);
xtitle("Even part x_e(n)", "n", "Amplitude");

// x_o(n)
subplot(3,1,3);
plot2d3(n, xo, style=3);
xtitle("Odd part x_o(n)", "n", "Amplitude");

disp("x(n) = "); disp(xn);
disp("x_e(n) = "); disp(xe);
disp("x_o(n) = "); disp(xo);
