a=0;
b=1;
for i=1:500
   x(i)=-3+rand*6;
   endfor
for i=1:500
   if(x(i)<=a || x(i)>=b)
   z(i)=0;
   else
   z(i)=1/(b-a);
   endif
   endfor
   plot(x,z,'rx','MarkerSize',10);
%plot(x,z);