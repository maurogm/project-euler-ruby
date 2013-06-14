#cd /media/Datos/Mauro/Ruby/Euler

divisors_3 =	(1..333).to_a
divisors_5 =	(1...200).to_a
divisors_15 =	(1..1000/15).to_a

result =	0

divisors_3.each 	{ |x| result	+= x * 3 }
divisors_5.each 	{ |x| result	+= x * 5 }
divisors_15.each 	{ |x| result	-= x * 15 }

puts result


__END__






PROBLEMA:


If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.




EXPLICACIÓN DE LA RESOLUCIÓN: (Me da paja traducir esto)


Para obtener todos los múltiplos de un número n, se toman los naturales y se los multiplica por n.


Yo tengo que sumar, por ejemplo, todos los múltiplos de 3 menores que 1000. O sea, que tengo que tomar los primeros 1000/3 naturales y multiplicarlos por 3, y luego sumarlos.
Procedo de igual manera para los múltiplos de 5 (tomando 1000/5 como cota).
Y luego sumo todo.

El problema es que hay números que son múltiplos de 3 y de 5 a los que sumo 2 veces. Estos son los múltiplos de 15.
Entonces lo que hago después es calcular la suma de dichos números, y restársela a la suma de los otros.




DUDA PARA TONCHIS:

A mí lo que me habría gustado hacer, en realidad, habría sido trabajar con los arrays como si fueran vectores (como en MATLAB).

Entonces habría hecho:

multiplos_3 = [1 2 3 ... 332 333] * 3
sum(multiplos_3)

Y así para cada uno.

¿Se puede hacer algo similar acá?