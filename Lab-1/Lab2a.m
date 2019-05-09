sum1=0;sum2=0;
n=500;
for i=1:n
   x(i,1)=-5+rand*10;
   x(i,2)=-5+rand*10;
   sum1=sum1+x(i,1);
   sum2=sum2+x(i,2);
   endfor
   x;
sum1=sum1/n;
sum2=sum2/n;
mean(:,1)=x(:,1)-sum1;
mean(:,2)=x(:,2)-sum2;
cov=1/(n-1)*mean'*mean
k=abs(det(cov));
k1=1/(((2*pi).^1)*((k.^0.5)));
for i=1:n
m=e^(-0.5*(mean(i,:)*inv(cov)*mean(i,:)'))
z(i)=k1*m;
endfor
plot3(x(:,1),x(:,2),z,'ro','MarkerSize',10);
