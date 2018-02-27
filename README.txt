Developed by Caetán Tojeiro Carpente (caetantojeiro95@gmail.com)


Implementation in OCaml of calculation succesion fibonacci with the matrix version. The implementation uses nums library, so there are no problems with big numbers as there are if it works with integers.



Example of execution:
$ ./fib 10
55

$ ./fib 100
354224848179261915075

$ ./fib 1000
43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875

$ ./fib a
ERROR: número válido. Por favor, introduzca un NÚMERO NATURAL o el NÚMERO CERO (0).

$ ./fib -9
ERROR: -9 es un número negativo

$ ./fib 0
0



Compile command:

ocamlc -o fib nums.cma fibmatrix.ml



**********************************************************************

Copyright (C) 2017  Caetán Tojeiro Carpente

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/agpl-3.0.html>

**********************************************************************
