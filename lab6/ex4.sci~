clc;
clear;
clf;

N = 512;
w = linspace(-%pi, %pi, N);

H = 1 ./ (1 + 0.1 * exp(-%i*w) + 0.2 * exp(-%i*2*w));

amplitude_spectrum = abs(H);
phase_spectrum = atan(imag(H), real(H));

subplot(2, 1, 1);
plot(w/%pi, amplitude_spectrum);
xlabel("Tan so chuan hoa w/pi");
ylabel("|H(e^jw)|");
title("Pho bien do");

subplot(2, 1, 2);
plot(w/%pi, phase_spectrum);
xlabel("Tan so chuan hoa w/pi");
ylabel("Pha");
title("Pho pha");
