clc;
clear;
clf;

N = 512;
w = linspace(-%pi, %pi, N);

X = 1 + exp(-%i*w) + exp(-%i*2*w) + exp(-%i*3*w);

magX = abs(X);
phaseX = atan(imag(X), real(X));

subplot(2,1,1);
plot(w/%pi, magX);
xlabel("Tan so chuan hoa w/pi");
ylabel("|X(e^jw)|");
title("Pho bien do cua x2(n)");

subplot(2,1,2);
plot(w/%pi, phaseX);
xlabel("Tan so chuan hoa w/pi");
ylabel("Pha");
title("Pho pha cua x2(n)");
