#cd /media/Datos/Mauro/Ruby/Euler


class Range
  def difference
    sum_of_squares = self.reduce(0) { |acumulator, number| acumulator + number**2 }
    square_of_sum = self.reduce(0) { |acumulator, number| acumulator + number } **2
    return square_of_sum - sum_of_squares
  end
end

puts (1..100).difference

__END__




ENUNCIADO DEL PROBLEMA:

http://projecteuler.net/problem=6



OBSERVACION:

Aprendí .reduce  ^_^