data=csvread('ionosphere.txt');
data;
m=size(data)
data =[data(:,1) data(:,[3:m(2)-1])];
size(data);
mean(data);
covariance=cov(data);
c=size(covariance);
[v, eig1]=eig(covariance);
eig1=sum(eig1)';
%eig1(1,:);
v1=v;
eig1=sort(eig1,'descend');
v;
for i=1:c(1)
   for j=1:c(1)
      if(i!=j && eig1(i)==eig1(j))
      v1(i)=v(i);
      endif
   endfor
endfor
sum1=sum(eig1)
eig1;
for i=1:c(1)
   div=sum(eig1([1:i],:))/sum1;
   k=i;
   div;
   if(div>0.9)
   break;
   endif
   endfor
eig1=eig1([1:k],:);
size(eig1)
k
%final_data=data*v1';
%v1=v1(:,[1:k]);
v1;
size(v1)