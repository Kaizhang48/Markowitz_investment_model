data=textread('DJIA-Data.txt', '%s', 'delimiter', '\n','whitespace', '');
datam=[];
name=cell(30,1);
jj=0;
for i=61:61:1830  
    jj=jj+1;
    name(jj,1)=data(i-60,1);
    datam=[datam,str2num(cell2mat(data(i-59:i)))];
end
datam=datam./100;

m=mean(datam)';
sigma=power(var(datam),1/2);
V=cov(datam);
VI=inv(V);
sz=size(V);
e=ones(sz(1),1);
C=e'*VI*e;
A=e'*VI*m;
BB=m'*VI*m;
D=BB*C-power(A,2);
drift1=C/D;
drift2=-2*A/D;
drift3=BB/D;
x=[];
r=A/C:0.001:0.14;
for rc=r
temp=drift1*power(rc,2)+drift2*rc+drift3;
x=[x,power(temp,1/2)];
end
R=0.0015;
%MVP
MVPm=A/C;
MVPvar=1/C;
%market portofolio
mpo=((m'-R*e')*VI)/((m'-R*e')*VI*e);    
mpm=mpo*m;
mps=power(mpo*V*mpo',1/2);
%-----------------
%capital market line
t=(mpm-R)/mps;
cx=0:0.001:0.18;
cml=t.*cx+R;
%-----------------
%-portfolio in question 3
Given=0.003;
wgt=(Given-R)./(mpm-R);
go=mpo*wgt;
gstd=power(go*V*go',1/2);
%------------------------
figure(2)
hold on
plot(x,r,'LineStyle','--','color','r');
plot(sigma,m','.','markersize',15);
plot(power(1/C,1/2),A/C,'.','markersize',20);
plot(mps,mpm,'.','markersize',20);
plot(0,R,'.','markersize',20);
plot(cx,cml);
plot(gstd,Given,'.','markersize',20);
xlabel('STD');
ylabel('Expected Return');
title('Homework 1 #2');
text(0.02,0.14,sprintf('Expected return of Market portfolio: %s',strcat(num2str(mpm.*100),'%')))
text(0.02,0.14*0.9,sprintf('STD of Market portfolio: %s',strcat(num2str(mps.*100),'%')))
legend('Efficient Frontier','Stocks','MVP','Market Portofolio','Risk-free Rate','Capital Market Line','dot of question 3')






