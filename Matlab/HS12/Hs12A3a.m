%DigSig HS12 Aufgabe3
%Luca Mazzoleni lmazzole@hsr.ch

clear all; 
close all; 
clc; 

h=[ 1   2   1   2   1];
h=transpose(h);

x=[ 1   0   -1  0];
x=transpose(x);

%a===================
faltung=conv(h,x)