sum1=0;
for i=1:500
   x(i)=-3+rand*6;
   sum1=sum1+x(i);
   endfor
sum1=sum1/500;
var=x-sum1;
var=sqrt(sum(var.^2)/499);
x1=x-sum1;
x2=sqrt(2*pi)*var;
z=1/x2*e.^(-((x1.^2)/(2*(var.^2))));
plot(x,z,'ro','MarkerSize',10);%Normal Distribution


