/*
Functia se termina automat pentru orice valoarea a lui x mai mic decat 10, deci decreases default functioneaza doarece x scade strict si este limitat
function F(x: int ): int {
 if x < 10 then x else F(x - 1)
 }
 */

 function G(x: int ): int 
 {
    if 0 <= x then G(x - 2) else x 
 }
 /* x-ul scade mereu pana ajunge la 0 */

function H(x: int ): int 
decreases 61 + x
{
 if x < -60 then x else H(x - 1)
} 
 /* x scade pana la -60, dupa care se termina functia */


function I(x: nat , y: nat ): int {
 if x == 0 || y == 0 then 12
 else if x % 2 == y % 2 then
 I(x - 1, y)
 else
 I(x, y - 1)
 }

 function J(x: nat , y: nat ): int {
 if x == 0 then y
 else if y == 0 then
 J(x - 1, 3)
 else
 J(x, y - 1)
 }

 function K(x: nat , y: nat , z: nat ): int {
 if x < 10 || y < 5 then x + y
 else if z == 0 then
 K(x - 1, y, 5)
 else
 K(x, y - 1, z - 1)
 }

 function L(x: int ): int 
 decreases 100-x{
    if x < 100 then L(x + 1) + 10 else x
 }