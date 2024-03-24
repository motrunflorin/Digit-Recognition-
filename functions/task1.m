## Copyright (C) 2021 Andrei
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
## @deftypefn {} {@var{retval} =} task1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Andrei <Andrei@DESKTOP-PK505U9>
## Created: 2021-09-14

function new_X = task1(photo, k)
  [m, n] = size(photo);

  % initializare matrice finala.
  new_X = zeros(m, n);

  % TODO: cast photo la double.
  photo = double(photo);

  % TODO: aplica algoritmul SVD asupra photo.
  [U, S, V] = svd(photo);

  % TODO: calculeaza noile matrici reduse U, S si V.
  U_red = U(:, 1:k);
  S_red = S(1:k, 1:k);
  V_red = V(:, 1:k);

  % TODO: calculeaza new_X care este aproximarea matricii initiale photo,
  % folosindu-va de matricile calculate anterior.
  new_X = U_red * S_red * V_red';

  % TODO: transforma matricea in uint8 pentru a fi o imagine valida.
  new_X = uint8(new_X);
endfunction
