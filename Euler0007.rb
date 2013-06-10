#cd /media/Datos/Mauro/Ruby/Euler


#Precondición: La lista debe contener numeros primos
def coprimo_con_lista?(entero, lista)
	for p in lista
		return true if p > Math.sqrt(entero)
		return false if entero%p == 0
	end
	return true
end


def n_primos(n)
	primos = [2]
	longitud_lista = 1
	test = 3
	while longitud_lista < n
		if coprimo_con_lista?(test,primos)
			primos << test
			longitud_lista += 1 #Llevo la cuenta aparte para no invocar primos.length al pedo
		end
		test += 2 #No pierdo tiempo en chequear números pares
	end
	return primos[-1], primos
end

p, primos = n_primos(10001)

puts p



__END__




ENUNCIADO DEL PROBLEMA:

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?


OBSERVACION:

Tiene que haber una forma más elegante que está brutalidad que hice...