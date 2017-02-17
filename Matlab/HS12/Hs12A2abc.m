%DigSig HS12 Aufgabe2
%Luca Mazzoleni lmazzole@hsr.ch

clear all; 
close all; 
clc; 

ws=2*pi;
w0=ws/3;
f0=w0/(2*pi);
fs=ws/(2*pi);
nCyl=10;     %Anz Perioden

syms t;
func = @(t) 2*cos(w0*t); %function

t=-nCyl/(2*f0):1/500e3:nCyl/(2*f0); %function time index
x = func(t);
 
t1=-nCyl/(2*f0):1/fs:nCyl/(2*f0); % sample time index
x1 = func(t1); 

figure(1)
plot(t,x)
hold on;
stem(t1,x1);

X = fft(x1);
figure(2)
X1=abs(X);
w = (0:(length(X)-1))/length(X)*ws;
plot(w,X1)

figure(3)
X2=abs(fftshift(X));
plot(w-ws,X2)


%b============================
ws=2*pi;
w0=ws*3/4;
f0=w0/(2*pi);
fs=ws/(2*pi);
nCyl=5;     %Anz Perioden

func = @(t) 2*cos(w0*t); %function


t=0:1/500e3:nCyl/(f0); %function time index
x = func(t);
 
t1=0:1/fs:nCyl/(f0); % sample time index
x1 = func(t1); 

figure(4)
plot(t,x)
hold on;
stem(t1,x1,'red');

%c============================
%Ztrans
syms n
ws=2*pi;
w0=ws/2;
f=2*cos(w0*n);
pretty(simplify(ztrans(f)))