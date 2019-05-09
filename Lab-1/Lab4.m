
n=500;

%a Shape is Spherical
m=[0 0]';
S=[1 0; 0 1];
X=mvnrnd(m,S,n)';% mvnrnd Function program attached with other files in the zip folder
subplot(2,4,1);
plot(X(1,:),X(2,:),'.');
title('Figure 1');
axis equal
axis([-5 5 -5 5])

%b Confined Spherical Shape
S=[0.2 0; 0 0.2];
X=mvnrnd(m,S,n)';
subplot(2,4,2);
plot(X(1,:),X(2,:),'.');
title('Figure 2');
axis equal
axis([-5 5 -5 5])

%c Dispersed Spherical Shape
S=[2 0; 0 2];
X=mvnrnd(m,S,n)';
subplot(2,4,3);
plot(X(1,:),X(2,:),'.');
axis equal
axis([-5 5 -5 5])
title('Figure 3');

%d Shape is Ellipse with major axis as Y axis
S=[0.2 0; 0 2];
X=mvnrnd(m,S,n)';
subplot(2,4,4);
plot(X(1,:),X(2,:),'.');
axis equal
axis([-5 5 -5 5])
title('Figure 4');

%e Shape is Ellipse with major axis as X axis
S=[2 0; 0 0.2];
X=mvnrnd(m,S,n)';
subplot(2,4,5);
plot(X(1,:),X(2,:),'.');
axis equal
axis([-5 5 -5 5])
title('Figure 5');

%f Shape is Dispersed Ellipse with major axis not parallel to either X or Y axis
S=[1 0.5; 0.5 1];
X=mvnrnd(m,S,n)';
subplot(2,4,6);
plot(X(1,:),X(2,:),'.');
axis equal
axis([-5 5 -5 5])
title('Figure 6');

%g Shape is Ellipse with major axis not parallel to either X or Y axis
S=[0.3 0.5; 0.5 2];
X=mvnrnd(m,S,n)';
subplot(2,4,7);
plot(X(1,:),X(2,:),'.');
axis equal
axis([-5 5 -5 5])
title('Figure 7');

%h Shape is Ellipse with major axis not parallel to either X or Y axis
S=[0.3 -0.5; -0.5 2];
X=mvnrnd(m,S,n)';
subplot(2,4,8);
plot(X(1,:),X(2,:),'.');
axis equal
axis([-5 5 -5 5])
title('Figure 8');