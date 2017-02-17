%DigSig FS14 Aufgabe2
%Luca Mazzoleni lmazzole@hsr.ch

clear all; 
close all; 
clc; 

%a===================================

f0=1;
fs=4;
ws=fs;
w0=f0;
nCyl=10;     %Anz Perioden

syms t;
func = @(t) 1-(heaviside(t+1)-heaviside(t-1)); %function

t=-nCyl/(2*f0):1/500e3:nCyl/(2*f0); %function time index
x = func(t);
 

t1=-nCyl/(2*f0):1/fs:nCyl/(2*f0); % sample time index
x1 = func(t1); 

figure(1)
plot(t,x)
hold on;
%stem(t1,x1);

% X = fft(x1);
% figure(2)
% X1=abs(X);
% w = (0:(length(X)-1))/length(X)*ws;
% plot(w,X1/length(X1))
% 
% figure(3)
% X2=abs(fftshift(X));
% plot(w-ws/2,X2)


%c==========================================
 
f0=1;
fs=1;
ws=fs;
w0=f0;
nCyl=20;     %Anz Perioden
func = @(t) 1-(heaviside(t+1)-heaviside(t-1)); %function

t=-nCyl/(2*f0):1/500e3:nCyl/(2*f0); %function time index
x = func(t);

t1=-nCyl/(2*f0):1/fs:nCyl/(2*f0); % sample time index
x1 = func(t1); 

figure(4)
plot(t,x)
hold on;
stem(t1,x1,'red');
