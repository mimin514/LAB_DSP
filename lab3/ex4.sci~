clc;
clear;
clf;

function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)

    n1_start = 1 - x1origin;
    n1_end   = length(x1n) - x1origin;

    n2_start = 1 - x2origin;
    n2_end   = length(x2n) - x2origin;

    n_start = min(n1_start, n2_start);
    n_end   = max(n1_end, n2_end);

    n = n_start:n_end;
    L = length(n);

    x1a = zeros(1, L);
    x2a = zeros(1, L);

    for i = 1:L
        idx1 = n(i) + x1origin;
        if idx1 >= 1 & idx1 <= length(x1n) then
            x1a(i) = x1n(idx1);
        end

        idx2 = n(i) + x2origin;
        if idx2 >= 1 & idx2 <= length(x2n) then
            x2a(i) = x2n(idx2);
        end
    end

    yn = x1a + x2a;
    yorigin = 1 - n_start;

    clf;
    subplot(3,1,1);
    plot2d3(n, x1a, style=5);
    xtitle("Signal x1(n)", "n", "Amplitude");

    subplot(3,1,2);
    plot2d3(n, x2a, style=2);
    xtitle("Signal x2(n)", "n", "Amplitude");

    subplot(3,1,3);
    plot2d3(n, yn, style=3);
    xtitle("Added Signal y(n) = x1(n) + x2(n)", "n", "Amplitude");

endfunction

x1n = [0, 1, 3, -2];
x1origin = 1;
x2n = [1, 1, 2, 3];
x2origin = 2;

[yn, yorigin] = add(x1n, x1origin, x2n, x2origin);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
