clc;clear;

syms x

int1 = int(6*exp(-4*x), -3, 5)

int2 = int(exp(-x), 0, inf)

int3 = int(exp(-(x^2)), -inf, inf)