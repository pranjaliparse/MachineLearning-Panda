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
plot(X2(:,1),X2(:,2),'.');
