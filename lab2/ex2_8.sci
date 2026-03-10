clc; 
clear; 
clf;

// Define original signal x(n)
n = [-2 -1 0 1];  
x = [1 -2 3 6];   

// Compute transformed signals
n1 = [-1 0 1 2];  
y1 = [6 3 -2 1];  // Time-reversed x(-n)

n2 = [-5 -4 -3 -2];  
y2 = [1 -2 3 6];  // Shifted x(n+3)

n3 = [0 1 2 3];  
y3 = [2 -4 6 12]; // Scaled and shifted 2x(-n-2)


scf(1);
// Plot Original Signal x(n)
subplot(2,1,1);
plot2d3(n, x, style=5);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

// Plot y1(n) = x(-n)
subplot(2,1,2);
plot2d3(n1, y1, style=5);
title("Reversed Signal y1(n) = x(-n)");
xlabel("n");
ylabel("Amplitude");

scf(2);
// Plot Original Signal x(n)
subplot(2,1,1);
plot2d3(n, x, style=5);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");
// Plot y2(n) = x(n+3)
subplot(2,1,2);
plot2d3(n2, y2, style=5);
title("Shifted Signal y2(n) = x(n+3)");
xlabel("n");
ylabel("Amplitude");

scf(3);
// Plot Original Signal x(n)
subplot(2,1,1);
plot2d3(n, x, style=5);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");
// Plot y3(n) = 2x(-n-2)
subplot(2,1,2);
plot2d3(n3, y3, style=5);
title("Scaled & Shifted Signal y3(n) = 2x(-n-2)");
xlabel("n");
ylabel("Amplitude");
