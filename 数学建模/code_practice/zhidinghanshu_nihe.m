% 指定函数拟合步骤
%  (1)输入待拟合数据x,y
% （2）指定函数关系式
syms t;
x=[0;0.4;1.2;2;2.8;3.6;4.4;5.2;6;7.2;8;9.2;10.4;11.6;12.4;13.6;14.4;15];
y=[1;0.85;0.29;-0.27;-0.53;-0.4;-0.12;0.17;0.28;0.15;-0.03;-0.15;-0.071;0.059;0.09;0.032;-0.015;-0.02];%指定函数形式为f(t)=acos(kt)e^(wt),进行拟合
f=fittype('a*cos(k*t)*exp(w*t)','independent','t','coefficients',{'a','k','w'});
cfun=fit(x,y,f)     %显示拟合函数
xi=0:.1:20;
yi=cfun(xi);
plot(x,y,'r*',xi,yi,'b-');