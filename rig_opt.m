clear
for g=1:10000
x0=[rand; rand; rand; rand; rand];
Aeq=[1 1 0 0 0];
beq=1;
lb = [0.05 0 -inf 0.000002 -inf];
ub = [1 1  inf inf inf];
[x ll] = fmincon('rig_eng',x0,[],[],Aeq,beq,lb,ub);
if rig_eng(x) < 2e-04
    break
    else
    end
end
x'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
wb=[0.54328171 0.44729189 0.00341449 0.00601191];	
w=[x(1)*wb(1)  x(1)*wb(2)  x(1)*wb(3) x(1)*wb(4) x(2)];
m=[-2.03111535e-05  7.12878171e-04  3.85331401e-03  8.60628279e-03 x(3)];	
v=[0.00040485 0.00299671 0.02191501 0.04403515 x(4)];
a=size(m);
n=a(2);
for j=1:n
    x1(j)=m(j);
    x2(j)=v(j)+m(j)^2;
    x3(j)=m(j)^3+3*m(j)*v(j);
    x4(j)=m(j)^4+6*m(j)^2*v(j)+3*v(j)^2;
end
X1=w*x1';
X2=w*x2';
X3=w*x3';
X4=w*x4';
mu=X1;
sig=sqrt(X2-X1^2);
sk=(X3-3*X2*X1+2*X1^3)/sig^3;
kur=(X4-4*X3*X1+6*X2*X1^2-3*X1^4)/sig^4;
A=[mu+x(5) sig sk kur]
