clc;
clear;
clf;

function [yn, yorigin] = fold(xn, xorigin)

    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;

    N = length(xn);
    n_x = (1:N) - xorigin;
    n_y = (1:N) - yorigin;

    clf;
    subplot(2,1,1);
    plot2d3(n_x, xn, style=5);
    xtitle("Original Signal x(n)", "n", "Amplitude");

    subplot(2,1,2);
    plot2d3(n_y, yn, style=2);
    xtitle("Folded Signal y(n) = x(-n)", "n", "Amplitude");

endfunction

xn = [1, -2, 3, 6];
xorigin = 3;

[yn, yorigin] = fold(xn, xorigin);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
