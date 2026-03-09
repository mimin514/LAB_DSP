clc;
clear;
clf();

// ===== 1. Analog signal =====
f0 = 50;              // Hz
T0 = 1/f0;            // analog period = 0.02 s

t = 0:0.0001:5*T0;    // draw 5 periods = 0.1 s
xa = 3*sin(100*%pi*t);

// ===== 2. Sampling =====
Fs = 300;             // samples/s
Ts = 1/Fs;            // sampling period

// x(n) = xa(nTs) = 3*sin(pi*n/3)
N0 = 6;               // fundamental period in samples
n = 0:5*N0-1;         // 5 periods => 30 samples
xn = 3*sin(100*%pi*n*Ts);

// ===== 3. Quantization =====
Delta = 0.1;
xq = Delta * fix(xn / Delta);

// ===== 4. Plot in one window =====
subplot(3,1,1);
plot(t, xa);
xtitle("Analog signal x_a(t) = 3sin(100πt)", "t (s)", "Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(n, xn);
xtitle("Discrete-time signal x(n) = 3sin(πn/3)", "n", "Amplitude");
xgrid();

subplot(3,1,3);
plot2d3(n, xq);
xtitle("Quantized signal x_q(n), Δ = 0.1 (truncate)", "n", "Amplitude");
xgrid();
