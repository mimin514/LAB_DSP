clc;
clear;
clf;

function [yn, yorigin] = delay(xn, xorigin, k)

    yorigin = xorigin - k;
    yn = xn;

    N = length(xn);
    n_x = (1:N) - xorigin;
    n_y = (1:N) - yorigin;

    clf;
    subplot(2,1,1);
    plot2d3(n_x, xn, style=5);
    xtitle("Original Signal x(n)", "n", "Amplitude");

    subplot(2,1,2);
    plot2d3(n_y, yn, style=2);
    xtitle("Delayed Signal y(n) = x(n-k)", "n", "Amplitude");

endfunction

xn = [1, -2, 3, 6];
xorigin = 3;
k = 1;

[yn, yorigin] = delay(xn, xorigin, k);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
