 data=csvread("iris.csv");
  m=length(data(:,1));
  n=length(data(1,:));
  class(m)=0;
  sum1=zeros(m,n);
center(1,:)=data(2,1:4);
center(2,:)=data(65,1:4);
center(3,:)=data(145,1:4);
class=euclidean(data,center);
classco=zeros(1,3);
do
  classco
  for j=2:m
     if class(j)==1
     sum1(1,1)+=data(j,1);
     sum1(1,2)+=data(j,2);
     sum1(1,3)+=data(j,3);
     sum1(1,4)+=data(j,4);
     classco(1,1)+=1;
     end
     if class(j)==2
     sum1(2,1)+=data(j,1);
     sum1(2,2)+=data(j,2);
     sum1(2,3)+=data(j,3);
     sum1(2,4)+=data(j,4);
     classco(1,2)+=1;
     end
     if class(j)==3
     sum1(3,1)+=data(j,1);         
     sum1(3,2)+=data(j,2);          
     sum1(3,3)+=data(j,3);         
     sum1(3,4)+=data(j,4);          
     classco(1,3)+=1;               
     end                          
  end                               
  center1=center;                    
  center(1,1)=sum1(1,1)/classco(1,1);
  center(1,2)=sum1(1,2)/classco(1,1);
  center(1,3)=sum1(1,3)/classco(1,1);
  center(1,4)=sum1(1,4)/classco(1,1);
  center(2,1)=sum1(2,1)/classco(1,2);
  center(2,2)=sum1(2,2)/classco(1,2);
  center(2,3)=sum1(2,3)/classco(1,2);
  center(2,4)=sum1(2,4)/classco(1,2);
  center(3,1)=sum1(3,1)/classco(1,3);
  center(3,2)=sum1(3,2)/classco(1,3);
  center(3,3)=sum1(3,3)/classco(1,3);
  center(3,4)=sum1(3,4)/classco(1,3); 
  %center1
  %center
  if abs(center1-center)<=0.001
  k=1;
  else
  k=0;
  end
  classco(:)=0;
  sum1(:)=0;
until(k==1)

for i=2:m
  if class(i)==1
  %fprintf("Iris-setosa\n");
  classco(1,1)+=1;
  z1(classco(1,1),:)=data(i,(1:4));
  endif
  if(class(i)==2)
  %fprintf("Iris-versicolor\n");
  classco(1,2)+=1;
  z2(classco(1,2),:)=data(i,(1:4));
  endif
  if(class(i)==3)
  %fprintf("Iris-virginica\n");
  classco(1,3)+=1;
  z3(classco(1,3),:)=data(i,(1:4));
  endif
endfor

classco

plot3(classco,'rx','MarkerSize',10);
hold on;
plot3(z2(:,1),z2(:,2),'r+','MarkerSize',10);
%plot(z1,'r+','MarkerSize',5);
hold on;
plot(z3(:,1),z3(:,2),'ro','MarkerSize',10);
%plot(z1,'ro','MarkerSize',5);
 size(z1)
 size(z2)
 size(z3)