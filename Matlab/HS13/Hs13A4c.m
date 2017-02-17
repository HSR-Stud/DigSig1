%DigSig HS13 Aufgabe4
%Luca Mazzoleni lmazzole@hsr.ch

clear all; 
close all; 
clc; 


%C====================================

syms z
G=1-z^(-1)+z^(-2)-z^(-3)+z^(-4);
g=iztrans(G)
g=iztrans(G,z,[0:1:4])
figure(1);
stem(g)

H=1/(1-z^(-2));
h=iztrans(H)
h=iztrans(H,z,[0:1:6])
figure(2);
stem(h)

Q=H*G;
q=iztrans(Q)

q=iztrans(Q,z,[0:1:10])
figure(3);
stem(q)