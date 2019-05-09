data=load("data.txt");
m=size(data);
X = data(:, 1); 
Y = data(:, 2);
Z = data(:, 3);
Xmean=sum(data(:, 1))/m(1);
Ymean=sum(data(:, 2))/m(1);
Zmean=sum(data(:, 3))/m(1);
cov=zeros(m(1),m(2));
cov1=zeros(m(2),m(2));
b1=0;
b2=0;
b3=0;
Xmean
Ymean
Zmean
for i=1:m(1)
  cov(i,1)=data(i,1)-Xmean;
  cov(i,2)=data(i,2)-Ymean;
  cov(i,3)=data(i,3)-Zmean;
  endfor
cov
for i=1:m(2)
  for j=1:m(2)
     cov1(i,j)=(cov(:,i))'*cov(:,j);
  endfor
endfor
cov1/9