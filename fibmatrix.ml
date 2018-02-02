

(***********************************************************************


	Developed by Caetán Tojeiro Carpente (caetantojeiro95@gmail.com)


************************************************************************)


open Num;;


let multM (a1,b1,c1) (a2,b2,c2) = 
	let b1b2 = b1*/b2 
	in (a1*/a2 +/ b1b2, a1*/b2 +/ b1*/c2, b1b2 +/ c1*/c2)


let rec elevar m n =
	if n=0 then (Int 1, Int 0, Int 1)
	else let m2 = elevar m (n/2) 	
		in
		if(n mod 2) = 0 then multM m2 m2 
		else multM m (multM m2 m2)
		

(*Se comprueba que el número con el que trabajar no es negativo.
En caso afirmativo se opera con él*)
let fib n =
	let (_,r,_) = (elevar (Int 1, Int 1, Int 0) n) 
	in
	if n>=0 then string_of_num r
		else  ("ERROR: " ^ (string_of_int n) ^ " es un número negativo");;
		

(*Se comprueba que solo se ha introducido un argumento, si no es así, 
se muestra un mensaje de error y un ejemplo de sintaxis correcta y se sale del programa*)	
let () = 
if (Array.length Sys.argv -1 <> 1) then 
	(print_endline ("ERROR: el número de argumentos no es correcto. Un ejemplo de sintaxis correcta es: ./fib 100"); 
	exit 0;)


(*Si la sintáxis del comando es correcta se procede a leer el argumento*)
let argumento = Sys.argv.(1);;


(*Se comprueba que se ha introducido un número y este es, al menos, un número entero. 
Si no se introduce un número, o no es entero, se muestra un error y se abandona el programa*)
try	
	(int_of_string argumento);
with
	| _ -> print_endline ("ERROR: número válido. Por favor, introduzca un NÚMERO NATURAL o el NÚMERO CERO (0)."); 
			exit 0


	
let numero = (int_of_string argumento);;
let result = fib numero;;
print_endline (result);;