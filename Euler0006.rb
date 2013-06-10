#cd /media/Datos/Mauro/Ruby/Euler


def diferencia(rango)
	suma_cuadrados =	rango.inject(0){|sum_cuad, n| sum_cuad + n**2}
	cuadrados_suma =	rango.inject(0){|sum_cuad, n| sum_cuad + n}**2
	return cuadrados_suma - suma_cuadrados
end

puts diferencia(1..100)

__END__




ENUNCIADO DEL PROBLEMA:

http://projecteuler.net/problem=6



OBSERVACION:

Aprendí .inject  ^_^