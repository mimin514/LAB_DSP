clc;
clear;
clf;

N = 512;
w = linspace(-%pi, %pi, N);

X = 1 ./ (1 - 0.5 * exp(-%i*w));
H = 1 + exp(-%i*w);

Y = X .* H;

magY = abs(Y);
phaseY = atan(imag(Y), real(Y));

subplot(2,1,1);
plot(w/%pi, magY);
xlabel("Tan so chuan hoa w/pi");
ylabel("|Y(e^jw)|");
title("Pho bien do cua y(n)");

subplot(2,1,2);
plot(w/%pi, phaseY);
xlabel("Tan so chuan hoa w/pi");
ylabel("Pha");
title("Pho pha cua y(n)");
