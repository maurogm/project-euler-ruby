#cd /media/Datos/Mauro/Ruby/Euler


#Precondition: The list must only include prime numbers
def coprime_with_list?(integer, list)
	for p in list
		return true if p > Math.sqrt(integer)
		return false if integer%p == 0
	end
	return true
end


def n_primos(n)
	primes = [2]
	length_list = 1
	test = 3
	while length_list < n
		if coprime_with_list?(test,primes)
			primes << test
			length_list += 1 #I keep track of this to avoid using primes.length in vain
		end
		test += 2 #I don't waste time on checking even numbers
	end
	return primes[-1], primes
end

p, primes = n_primos(10001)

puts p



__END__




ENUNCIADO DEL PROBLEMA:

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?


OBSERVACION:

Tiene que haber una forma más elegante que está brutalidad que hice...