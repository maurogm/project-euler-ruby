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

  def first_n_primes
    primes = [2]
    length_list = 1
    test = 3
    until length_list == self
      if test.coprime_with_list?(primes)
        primes << test
        length_list += 1 #I keep track of this to avoid using primes.length in vain
      end
      test += 2 #I don't waste time on checking even numbers
    end
    return primes
  end
end

primes = 10001.first_n_primes

puts primes.last



__END__




ENUNCIADO DEL PROBLEMA:

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?


OBSERVACION:

Tiene que haber una forma más elegante que está brutalidad que hice...