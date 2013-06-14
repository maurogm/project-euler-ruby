#cd /media/Datos/Mauro/Ruby/Euler

class Integer
  #Precondition: The list must only include prime numbers
  def coprime_with_list?(list)
    for prime in list
      return true if prime > Math.sqrt(self)
      return false if self % prime == 0
    end
    return true
  end

  def primes_to_n
    primes = [2]
    test = 3
    sum = 2
    while test < self
      if test.coprime_with_list?(primes)
        primes << test
        sum += test
      end
      test += 2 #I don't waste time on checking even numbers
    end
    return sum, primes
  end
end

sum, primes = 2_000_000.primes_to_n

puts sum


__END__




ENUNCIADO DEL PROBLEMA:

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.


OBSERVACION:

Me tardó 28 segundos.

Inicialmente no puse la restricción de "return true if p > Math.sqrt(entero)",
y tardó más de 20 minutos.
