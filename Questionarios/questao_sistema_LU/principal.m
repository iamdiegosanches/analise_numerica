clear
clc

A = [3.44 14.78 8.38 19.34 24.72; 11.82 2.64 14.58 19.64 35.26;8.76 17.92 38.30 8.11 30.42; 23.86 27.12 12.25 3.52 44.03;26.25 39.75 31.57 41.04 47.17];
b = [-17.71;15.91;15.39;-19.53;1.47];

sol_decomp_LU(A, b)
