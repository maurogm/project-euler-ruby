#cd /media/Datos/Mauro/Ruby/Euler


def difference(range)
	sum_of_squares =	range.inject(0){|sum_cuad, n| sum_cuad + n**2}
	square_of_sum =	range.inject(0){|sum_cuad, n| sum_cuad + n}**2
	return square_of_sum - sum_of_sqares
end

puts difference(1..100)

__END__




ENUNCIADO DEL PROBLEMA:

http://projecteuler.net/problem=6



OBSERVACION:

Aprendí .inject  ^_^