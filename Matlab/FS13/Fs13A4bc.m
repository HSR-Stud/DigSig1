%DigPro FS13 Aufgabe4
%Luca Mazzoleni lmazzole@hsr.ch

clear all; 
close all; 
clc; 

% syms z
% H= (z^-1)/(1-z^-1)
% G= z + z^-1
% h=iztrans(H)
% g=iztrans(G)
% Q=H*G


%b=================================
%Pol Nullstellen solven
ns=[    1   0   1   ];
ps=[    1   -1   0  ];

G=tf(ns,ps);
nullstellen=zero(G)
polstellen=pole(G)

figure(1)
pzmap(G)

%c===============================
syms z
Q=(z^(-1)*(z+z^(-1)))/(1-z^(-1));
q=iztrans(Q)

q=iztrans(Q,z,[0:1:5])

figure(2);
stem(q)