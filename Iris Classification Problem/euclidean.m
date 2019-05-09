## Copyright (C) 2019 PRANJALI
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} euclidean (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: PRANJALI <PRANJALI@DESKTOP-OCU2PSE>
## Created: 2019-01-19
function [class] = euclidean(data,center)
center;
m=length(data(:,1));
class = zeros(m+1, 1);
for i=1:m
min=10000;
e1=(data(i,1)-center(1,1))^2+(data(i,2)-center(1,2))^2+(data(i,3)-center(1,3))^2+(data(i,4)-center(1,4))^2;
e1=sqrt(e1);
%e1
if min>=e1
min=e1;
class(i)=1;
end
e2=(data(i,1)-center(2,1))^2+(data(i,2)-center(2,2))^2+(data(i,3)-center(2,3))^2+(data(i,4)-center(2,4))^2;
e2=sqrt(e2);
%e2 
if min>=e2
min=e2;
class(i)=2;
end
e3=(data(i,1)-center(3,1))^2+(data(i,2)-center(3,2))^2+(data(i,3)-center(3,3))^2+(data(i,4)-center(3,4))^2;
e3=sqrt(e3);
%e3
if min>=e3
min=e3;
class(i)=3;
end
%class(i)
end
endfunction
