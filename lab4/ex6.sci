clc;
clear;
close;

// ==========================
// Signals
// ==========================
x = [1 2 -3 2 1];
h = [1 0 -1];

nx = 0:(length(x)-1);
nh = 0:(length(h)-1);

// Convolution
y = conv(x, h);
ny = 0:(length(y)-1);

// Energy
ex = x.^2;
ey = y.^2;

E_x = sum(ex);
E_y = sum(ey);

// ==========================
// PLOT (4 hình)
// ==========================
figure(1);

// ===== 1. x(n) =====
subplot(2,2,1);
plot2d3(nx, x, 4);   // xanh dương
xtitle("x(n)", "n", "Amplitude");

// ===== 2. h(n) =====
subplot(2,2,2);
plot2d3(nh, h, 6);   // tím
xtitle("h(n)", "n", "Amplitude");

// ===== 3. y(n) =====
subplot(2,2,3);
plot2d3(ny, y, 2);   // đỏ
xtitle("y(n)", "n", "Amplitude");

// ===== 4. HÌNH TỔNG =====
subplot(2,2,4);

// tạo khung trước
n_all = 0:max(ny);
plot(n_all, zeros(n_all), 'w-');
set(gca(), "auto_clear", "off");

// x(n)
plot(nx, x, 'b-');

// y(n)
plot(ny, y, 'r-');

// energy (đường ngang)
plot(n_all, E_x * ones(n_all), 'g--');
plot(n_all, E_y * ones(n_all), 'm--');

title("Signals x(n), y(n), and Their Energies");
xlabel("n");
ylabel("Amplitude/Energy");

legend("x(n)", "y(n)", "Energy of x", "Energy of y");
