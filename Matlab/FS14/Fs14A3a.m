%DigSig HS12 Aufgabe3
%Luca Mazzoleni lmazzole@hsr.ch

clear all; 
close all; 
clc; 

h=[ 0   1   2   3   4   5   6   7];
h=transpose(h);

x=[ 1   -1   1  -1];
x=transpose(x);

%a===================
faltung=conv(h,x)

%b==================

syms z
H=1/(1-z^(-4));
h=iztrans(H,z,[0:1:4])

X=z^(-3)-z^(-2)+z^(-1)-z^(0);
x=iztrans(X,z,[0:1:3])

% faltung=conv(h,x)
% figure(1);
% stem(faltung)

figure(2);
stem(h)

Y=H*X
y=iztrans(Y,z,[0:1:10])
figure(3);
stem(y)
