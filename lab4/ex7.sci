clc;
clear;
close;

// ==========================
// EXERCISE 7 - Circular Convolution
// ==========================

// Signals
x = [1 2 -3 2 1];
h = [1 0 -1 -1 1];

N = length(x);
M = length(h);

nx = 0:(N-1);

// ==========================
// 1. Circular convolution
// ==========================
y = zeros(1, N);

for n = 1:N
    s = 0;
    for k = 1:M
        idx = pmodulo(n - k, N) + 1;
        s = s + h(k) * x(idx);
    end
    y(n) = s;
end

ny = 0:(N-1);

// ==========================
// 2. Energy
// ==========================
ex = x.^2;
ey = y.^2;

E_x = sum(ex);
E_y = sum(ey);

// ==========================
// 3. Display
// ==========================
disp("y(n) = ");
disp(y);

disp("Energy of x(n) = ");
disp(E_x);

disp("Energy of y(n) = ");
disp(E_y);

// ==========================
// 4. Plot (ĐÚNG ĐỀ)
// ==========================
figure(1);

// ----- x(n)
subplot(3,1,1);
plot2d3(nx, x, 4);
xtitle("x(n)", "n", "Amplitude");

// ----- y(n)
subplot(3,1,2);
plot2d3(ny, y, 2);
xtitle("y(n)", "n", "Amplitude");

// ----- energy
subplot(3,1,3);
plot2d3(nx, ex, 3);
plot2d3(ny, ey, 5);
xtitle("Energy", "n", "Value");
legend("e_x(n)", "e_y(n)");
