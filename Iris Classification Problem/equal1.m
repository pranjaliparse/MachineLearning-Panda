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
## @deftypefn {Function File} {@var{retval} =} equal (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: PRANJALI <PRANJALI@DESKTOP-OCU2PSE>
## Created: 2019-01-19

function [k] = equal (center1,center)
 m=abs(center1-center)
 if(m<=0.1)
 k=0;
 end
 else
 k=1;
 end
endfunction
