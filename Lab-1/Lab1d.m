lam=20;
for i=1:500
   x(i)=ceil(rand*20);
   endfor
for i=1:500
   prod=1;
   for j=1:x(i)
     prod=prod*j;
     endfor
   z(i)=((lam^x(i))*e.^(-lam))/prod;
   endfor
   plot(x,z,'ro','MarkerSize',10);