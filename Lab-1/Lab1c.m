lam=2;
for i=1:500
   x(i)=-3+rand*6;
   endfor
for i=1:500
   if(x(i)>=0)
   z(i)=lam*e.^(-(lam*x(i)));
   else
   z(i)=0;
   endif
   endfor
   plot(x,z,'rx','MarkerSize',10);