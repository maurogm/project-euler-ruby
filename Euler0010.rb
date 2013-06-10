#cd /media/Datos/Mauro/Ruby/Euler


#Precondition: The list must only include prime numbers
def coprime_with_list?(integer, list)
	for p in list
		return true if p > Math.sqrt(integer)
		return false if integer%p == 0
	end
	return true
end


def primes_to_n(n)
	primes = [2]
	test = 3
	sum = 2
	while test < n
		if coprime_with_list?(test,primes)
			primes << test
			sum += test
			puts test
		end
		test += 2 #I don't waste time on checking even numbers
	end
	return sum, primes
end


sum, primes = primes_to_n(2000000)

puts sum


__END__




ENUNCIADO DEL PROBLEMA:

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.


OBSERVACION:

Me tardó 28 segundos.

Inicialmente no puse la restricción de "return true if p > Math.sqrt(entero)",
y tardó más de 20 minutos.
