#cd /media/Datos/Mauro/Ruby/Euler


class String
  def palindrome?
    length = self.size - 1
    for i in 0..(length / 2)
      return false if self[i] != self[length - i]
    end
    return true
  end
end

class Integer
  # Looks for the maximum palindrome (higher than a lower bound) composed by
  # the product between the input and an integer lower than him
  def max_palindrome_with_n(bound = -Float::INFINITY)
    for factor in self.downto(1)
      candidate = self * factor
      return -Float::INFINITY if candidate < bound
      return candidate if "#{candidate}".palindrome?
    end
    return -Float::INFINITY
  end

  def max_palindrome
    partial_solution = -Float::INFINITY
    integer = self
    while integer > 0 && partial_solution < integer * integer
      candidate = integer.max_palindrome_with_n(partial_solution)
      partial_solution = [partial_solution, candidate].max 
      integer -= 1
    end
    return partial_solution
  end
end

puts 999.max_palindrome

__END__



ENUNCIADO DEL PROBLEMA:


A palindromic number reads the same both ways.
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99

Find the largest palindrome made from the product of two 3-digit numbers.

