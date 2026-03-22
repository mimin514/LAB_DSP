clc;
clear;
clf;

function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)

    yn = conv(xn, hn);
    yorigin = xorigin + horigin - 1;

    Nx = length(xn);
    Nh = length(hn);
    Ny = length(yn);

    n_x = (1:Nx) - xorigin;
    n_h = (1:Nh) - horigin;
    n_y = (1:Ny) - yorigin;

    clf;
    subplot(3,1,1);
    plot2d3(n_x, xn, style=5);
    xtitle("Input Signal x(n)", "n", "Amplitude");

    subplot(3,1,2);
    plot2d3(n_h, hn, style=2);
    xtitle("Impulse Response h(n)", "n", "Amplitude");

    subplot(3,1,3);
    plot2d3(n_y, yn, style=3);
    xtitle("Convolution Signal y(n) = x(n) * h(n)", "n", "Amplitude");

endfunction

xn = [1, 2, 1];
xorigin = 2;

hn = [1, 1, -1];
horigin = 2;

[yn, yorigin] = convolution(xn, xorigin, hn, horigin);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
