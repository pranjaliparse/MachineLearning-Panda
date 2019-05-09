for i=1:90
   j(i)=1.0389*i;
   k(i)=1*i;
  end
plot(j,k);
hold on;
class1=load("class1.txt");
class2=load("class2.txt");
axis([0,12]);
plot(class1(:,1),class1(:,2),'rx','MarkerSize',10);
hold on;
plot(class2(:,1),class2(:,2)','rx','MarkerSize',10);
