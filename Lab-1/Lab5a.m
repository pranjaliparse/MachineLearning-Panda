n=500;
m1=[1 1]';
m2=[3 3]';
m=[m1 m2];
S1=[0.1 -0.08; -0.08 0.2];
S2=[0.1 0; 0 0.1];

%a
P=[0.5 0.5];
X1=mvnrnd(m(:,1)',S1,n);%% mvnrnd.m Function program attached with other files in the zip folder
X2=mvnrnd(m(:,2)',S2,n);
plot(X1,'.');

%plot(X2,'.');
X=zeros(size(X1))
for i=1:n
   l(i)=rand;
   if(l(i)*P(1)>(1-l(i))*P(2))
      q(i)=1;
      X(i,:)=X1(i,:);
   else
      q(i)=0;
      X(i,:)=X2(i,:);
      endif
      endfor
      subplot(1,3,1);
%plot(X(:,1),X(:,2),'.');
title('S1=[0.1 -0.08; -0.08 0.2], S2=[0.1 0; 0 0.1] P=[0.5 0.5]');


%b
P=[0.85 0.15];
X1=mvnrnd(m(:,1)',S1,n);
X2=mvnrnd(m(:,2)',S2,n);
size(X1)
for i=1:n
   l(i)=rand;
   if(l(i)*P(1)>(1-l(i))*P(2))
      q(i)=1;
      X(i,:)=X1(i,:);
   else
      q(i)=0;
      X(i,:)=X2(i,:);
      endif
      endfor
      subplot(1,3,2);
%plot(X(:,1),X(:,2),'.');
title('S1=[0.1 -0.08; -0.08 0.2], S2=[0.1 0; 0 0.1] P=[0.85 0.15]');


%c
S1=[0.1 -0.09; -.01 0.2];
S2=[0.1 0; 0 0.1];
P=[0.25 0.75];
X1=mvnrnd1(m(:,1)',S1,n);%% mvnrnd1.m Function program attached with other files in the zip folder
X2=mvnrnd1(m(:,2)',S2,n);
size(X1)
for i=1:n
   l(i)=rand;
   if(l(i)*P(1)>(1-l(i))*P(2))
      q(i)=1;
      X(i,:)=X1(i,:);
   else
      q(i)=0;
      X(i,:)=X2(i,:);
      endif
      endfor
      subplot(1,3,3);
%plot(X(:,1),X(:,2),'.');
title('S1=[0.1 -0.09; -.01 0.2], S2=[0.1 0; 0 0.1] P=[0.25 0.75]');