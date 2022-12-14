%千葉工大未来ロボティクス学科様向け
%倒立振子モデル　パラメータ
%version2

%定数パラメータ
m=0.024;%振子質量[kg]
%Mとmは振り子の質量は独立
M=0.703;%台車質量[kg]
I=0.00017701;%振子慣性モーメント 重心中心y軸方向[Kg.m^2]
l=0.14875;%振子代表長 重心から端まで[m]
g=9.81;%重力加速度[m/s^2]

den = (M+m)*I+M*m*l^2;%各係数の分母

alpha = ((M+m)*M*l*g)/den;%千葉工大版
beta = (M*l)/den;
gamma = (-M^2*l^2*g)/den;
%delta =-(I+M*L^2)/den;%千葉工大版
delta = (I+M*l^2)/den;%三田版

f0 = 7.847;
f1 = -25.831;

Kp=0.037*100; Kd=0.06*100; Ki=0.028*100;

%0.037
%0.06
%0.028
%PIDコントロールのシータの値を変えてある