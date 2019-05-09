d=3;
n=500;
sum1=zeros(d);
for i=1:d
   for j=1:n
      p(j,i)=rand;
      sum1(i)=sum1(i)+p(j,i);
      endfor
      endfor
      p;
      sum1=sum1/n;
      sum1;
      for i=1:d
         p(:,i)=p(:,i)-sum1(i);
         endfor
      disp("Dimension:");
      d
      disp('Covariance Matrix');
      cov=1/(n-1)*p'*p
      