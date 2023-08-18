## Copyright (C) 2023 dgsan
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} newton_cotes_tripla (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-08-16

function [integral,Info] = newton_cotes_tripla (ax,bx,nx,mx,ay,by,ny,my,az,bz,nz,mz,f)
  d = [2 6 8 90 288 840 17280 28350];
  c = [1 1 4 1 3 7 32 12 19 75 50 41 216 27 272 751 3577 1323 2989 989 5888 -928 10496 -4540];
  Info = 0;
  integral = 0;
  if nx<1 || nx>8 || ny<1 || ny>8 || nz<1 || nz>8
    Info = Info+1;
  endif
  if rem(mx,nx)~=0 || rem(my,ny)~=0 || rem(mz,nz)~=0
    Info = Info+2;
  endif
  if Info ~= 0
    return
  endif
  px=fix(0.25*(nx*(nx+2)+rem(nx,2)));
  py=fix(0.25*(ny*(ny+2)+rem(ny,2)));
  pz=fix(0.25*(nz*(nz+2)+rem(nz,2)));
  hx=(bx-ax)/mx;
  hy=(by-ay)/my;
  hz=(bz-az)/mz;
  for i=0:mx
    x=ax+i*hx;
    jx=px+fix(0.5*nx-abs(rem(i,nx)-0.5*nx));
    kx=1+fix((nx-rem(i,nx))/nx)-fix((mx-rem(i,mx))/mx);
    for j=0:my
      y=ay+j*hy;
      jy=py+fix(0.5*ny-abs(rem(j,ny)-0.5*ny));
      ky=1+fix((ny-rem(j,ny))/ny)-fix((my-rem(j,my))/my);
      for t=0:mz
        z=az+t*hz;
        tz=pz+fix(0.5*nz-abs(rem(t,nz)-0.5*nz));
        kz=1+fix((nz-rem(t,nz))/nz)-fix((mz-rem(t,mz))/mz);
        fxyz=f(x,y,z);
        integral=integral+fxyz*c(tx)*kx*c(ty)*ky*c(tz)*kz;
      endfor
    endfor
  endfor
  integral=nx*ny*nz*hx*hy*hz/(d(nx)*d(ny)*d(nz))*integral;
endfunction
