#cd /media/Datos/Mauro/Ruby/Euler


#Precondición: La lista debe contener numeros primos
def coprimo_con_lista?(entero, lista)
	for p in lista
		return true if p > Math.sqrt(entero)
		return false if entero%p == 0
	end
	return true
end


def primos_hasta_n(n)
	primos = [2]
	test = 3
	suma = 2
	while test < n
		if coprimo_con_lista?(test,primos)
			primos << test
			suma += test
			puts test
		end
		test += 2 #No pierdo tiempo en chequear números pares
	end
	return suma, primos
end


suma, primos = primos_hasta_n(2000000)

puts suma


__END__




ENUNCIADO DEL PROBLEMA:

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.


OBSERVACION:

Me tardó 28 segundos.

Inicialmente no puse la restricción de "return true if p > Math.sqrt(entero)",
y tardó más de 20 minutos.
