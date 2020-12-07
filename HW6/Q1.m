clc;clear;

syms x
assume(x/3,'integer')
solve(x>10,x<20,x)

assume(x,'positive')
assumeAlso(x<10)
assump = assumptions(x)