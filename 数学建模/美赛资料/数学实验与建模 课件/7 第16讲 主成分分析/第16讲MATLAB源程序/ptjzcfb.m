%酿酒白葡萄的13个主因素数据
x=[1279.30 	497.953 	0.410 	6.040 	5.703 	0.3977 	186.849	267.60 	72.3 	51.245 	0.3263 	199.3 	77.9
1870.93 	539.254 	0.404 	5.420 	5.016 	1.6627 	222.278	97.60 	69.5 	10.176 	0.3058 	209.1 	75.8
5022.14 	468.656 	2.511 	11.790 	6.981 	1.6333 	232.429	203.96 	74.7 	12.474 	0.2835 	206.8 	75.6
2085.76 	496.948 	1.625 	6.920 	5.342 	1.3188 	212.442	106.60 	72.6 	32.459 	0.3681 	213.6 	76.9
2658.04 	468.603 	0.361 	9.200 	6.415 	3.1705 	256.02	106.70 	69.0 	14.196 	0.2460 	210.3 	81.5
1847.12 	492.088 	0.417 	8.320 	10.733 	8.0864 	220.124	296.36 	78.7 	14.730 	0.3366 	198.8 	75.5
1721.58 	559.560 	2.064 	4.240 	10.550 	4.7952 	242.2	234.10 	68.6 	17.211 	0.3705 	171.5 	74.2
1273.22 	493.739 	2.455 	7.590 	5.322 	5.6080 	196.156	281.80 	79.0 	58.633 	0.1045 	174.8 	72.3
1927.42 	484.390 	3.275 	10.290 	6.078 	0.7518 	220.415	138.40 	64.9 	32.220 	0.3783 	219.5 	80.4
2095.61 	516.492 	0.422 	7.340 	7.854 	1.1776 	243.081	118.40 	70.2 	31.785 	0.3418 	225.2 	79.8
1566.97 	559.059 	0.407 	7.200 	7.910 	1.8589 	174.03	323.30 	72.0 	38.482 	0.2318 	185.2 	71.4
1724.16 	459.045 	0.409 	4.640 	8.643 	8.4308 	250.51	286.42 	71.9 	18.370 	0.4484 	221.7 	72.4
664.96 	460.830 	2.090 	4.900 	11.697 	0.2103 	177.755	286.08 	77.0 	26.424 	0.4089 	186.7 	73.9
1542.17 	522.480 	0.404 	3.310 	5.083 	1.3006 	253.4	144.20 	77.4 	31.728 	0.4172 	191.9 	77.1
2669.22 	549.854 	1.222 	5.550 	8.684 	11.8734 	212.712	498.13 	70.0 	8.288 	0.3536 	189.7 	78.4
991.92 	464.819 	3.693 	5.750 	4.998 	5.3140 	216.733	259.20 	71.4 	52.591 	0.0976 	185.1 	67.3
1167.29 	416.876 	1.671 	10.210 	6.604 	6.0135 	182.553	104.78 	75.0 	20.481 	0.2597 	198.8 	80.3
1289.93 	583.403 	0.812 	3.980 	12.078 	2.7771 	198.668	285.90 	83.0 	25.628 	0.2112 	182.8 	76.7
817.81 	449.107 	2.072 	9.380 	4.877 	0.8535 	210.105	164.26 	69.9 	30.204 	0.2003 	204.5 	76.4
2045.24 	480.667 	0.829 	10.650 	5.241 	6.1633 	235.097	202.38 	75.9 	29.330 	0.3347 	209.1 	76.6
1554.02 	586.240 	0.819 	8.500 	4.386 	0.7158 	228.364	92.40 	69.6 	23.920 	0.2524 	207.9 	79.2
1457.67 	407.990 	1.651 	8.970 	6.220 	8.9296 	225.523	73.52 	68.3 	36.357 	0.3656 	216.0 	79.4
1522.52 	504.624 	1.244 	8.280 	5.184 	12.4106 	253.514	195.70 	68.2 	20.055 	0.3596 	210.3 	77.4
3068.34 	630.561 	0.372 	6.960 	10.563 	3.2138 	227.25	195.60 	66.7 	14.021 	0.4061 	224.1 	76.1
2350.79 	519.210 	0.402 	6.950 	7.611 	8.6195 	255.29	141.20 	74.2 	34.358 	0.2123 	228.7 	79.5
2073.33 	496.835 	1.657 	6.810 	5.768 	4.3089 	259.877	102.20 	56.3 	18.194 	0.2995 	212.5 	74.3
2475.21 	636.101 	0.420 	8.300 	17.254 	50.4966 	224.944	165.70 	63.8 	19.723 	0.3846 	191.9 	77
3785.57 	451.833 	1.645 	8.890 	6.592 	5.7323 	239.325	108.00 	65.9 	46.060 	0.3650 	247.7 	79.6
];
   X=zscore(x); %数据标准化
r=corrcoef(X);  %计算相关系数矩阵

[vec,val]=eig(r)    %求特征值(val)及特征向量(vec)
newval=diag(val) ;
[y,i]=sort(newval) ;      %对特征根进行排序，y为排序结果，i为索引
fprintf('特征根排序：\n')
for z=1:length(y)
    newy(z)=y(length(y)+1-z);
end
fprintf('%g\n',newy)
rate=y/sum(y);
fprintf('\n贡献率：\n')
newrate=newy/sum(newy)
sumrate=0;
newi=[];
for k=length(y):-1:1
    sumrate=sumrate+rate(k);
    newi(length(y)+1-k)=i(k);
    if sumrate>0.85  break;
    end  
    
end                %记下累积贡献率大85%的特征值的序号放入newi中
fprintf('主成分数：%g\n\n',length(newi));
fprintf('主成分载荷：\n')
for p=1:length(newi)
    for q=1:length(y)
        result(q,p)=sqrt(newval(newi(p)))*vec(q,newi(p));
    end
end                    %计算载荷
disp(result)


A=((result))'*X';
B=[]
for i=1:28
B(i,1)=sum(A(:,i));%计算酿酒葡萄得分
end
B
