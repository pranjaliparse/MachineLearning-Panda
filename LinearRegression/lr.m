data=load("data.txt");
m=size(data);
X = data(:, 1); 
Y= data(:,2);
Xmean=sum(data(:, 1))/m(1);
Ymean=sum(data(:, 2))/m(1);
cov=zeros(m(1),2);
b1=0;
b2=0;
for i=1:m(1)
  cov(i,1)=data(i,1)-Xmean;
  cov(i,2)=data(i,2)-Ymean;
  endfor

for i=1:m(1)
  b1+=cov(i,1)*cov(i,2);
  b2+=cov(i,1)^2;
  endfor
Ymean
Xmean
b=b1/b2;
a=Ymean-b*Xmean;
a
b  
%%Question 1
plot(X,Y,'rx','MarkerSize',10);
%%Question 2
hold on
plot(X, a+b*X);
%%Question 3
y1=a+b*1120;
y1
%%Question 4
m(1)
y2=sqrt(sum(((a+b*X)-Y).^2)/(m(1)-2));
y2   
   