#cd /media/Datos/Mauro/Ruby/Euler


def max_prime_factor(integer)
	n=2
	while n <= integer
		if integer%n == 0
			integer = integer / n
			if integer == 1
				return n
			end
		else
			n += 1			
		end
	end
end

puts max_prime_factor(600851475143)


__END__




ENUNCIADO DEL PROBLEMA:


The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?




EXPLICACIÓN DE LA RESOLUCIÓN:


¡Los primos no importan! Es suficiente ir viendo si cada natural lo divide o no.
Eso permite, además, que cuando se encuentra un divisor podemos dividir al número
original por el divisor, reduciéndolo y haciendo las cuentas siguientes más sencillas.
Cada vez que se encuentra un nuevo divisor, sí o sí tiene que ser primo.
Luego, el último divisor que encontramos también será el máximo factor primo.


