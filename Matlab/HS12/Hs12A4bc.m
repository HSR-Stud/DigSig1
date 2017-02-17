%DigSig HS12 Aufgabe4
%Luca Mazzoleni lmazzole@hsr.ch

clear all; 
close all; 
clc; 

% a============= Doesn't work properly
% syms w0
% z=exp(1j*w0);
% G=(1-z^(-4));
% simplify(rewrite((abs(G)^2),'cos'))


%b=================================
ns=[    1   0   0   0   -1   ];
ps=[    1   -1  ];

G=tf(ns,ps);
nullstellen=zero(G)
polstellen=pole(G)

figure(1)
pzmap(G)


%c===============================
syms z
Q=(1-z^(-4))*1/(1-z^(-1));
q=iztrans(Q)

q=iztrans(Q,z,[0:1:3])

figure(2);
stem(q)
