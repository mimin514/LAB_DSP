clc;
clear;
clf;

// ================================
// FUNCTION
// ================================
function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
endfunction

function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;
endfunction

// ================================
// TIN HIEU BAN DAU
// ================================
xn = [0, 1/3, 2/3, 1, 1, 1, 1];
xorigin = 4;

N = length(xn);
n_x = (1:N) - xorigin;

// ================================
// BIEN DOI
// ================================

// fold
[y1, y1origin] = fold(xn, xorigin);
n_y1 = (1:length(y1)) - y1origin;

// fold -> delay
[y2, y2origin] = delay(y1, y1origin, 4);
n_y2 = (1:length(y2)) - y2origin;

// delay
[y3, y3origin] = delay(xn, xorigin, 4);
n_y3 = (1:length(y3)) - y3origin;

// delay -> fold
[y4, y4origin] = fold(y3, y3origin);
n_y4 = (1:length(y4)) - y4origin;

// ================================
// VE HINH
// ================================
clf;

// x(n)
subplot(3,2,1);
plot2d3(n_x, xn, style=5);
xtitle("x(n)", "n", "Amplitude");

// x(-n)
subplot(3,2,2);
plot2d3(n_y1, y1, style=2);
xtitle("x(-n)", "n", "Amplitude");

// x(-n+4)
subplot(3,2,3);
plot2d3(n_y2, y2, style=3);
xtitle("x(-n+4)", "n", "Amplitude");

// x(n-4)
subplot(3,2,4);
plot2d3(n_y3, y3, style=4);
xtitle("x(n-4)", "n", "Amplitude");

// x(-n-4)
subplot(3,2,5);
plot2d3(n_y4, y4, style=5);
xtitle("x(-n-4)", "n", "Amplitude");

disp("Done!");
