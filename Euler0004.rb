#cd /media/Datos/Mauro/Ruby/Euler



def palindromo?(string)
	largo = string.length-1
	for i in 0..(largo / 2)
		if string[i] != string[largo - i]
			return false
		end
	end
	return true
end


# Busca el máximo palindromo formado por el producto entre el input y un
# entero menor que él; pero que sea mayor que una cota inferior
def maximo_palindromo_de_n(entero , cota = -Float::INFINITY)
	for factor in entero.downto(1)
		candidato = entero*factor
		if candidato < cota
			return -Float::INFINITY
		end
		if palindromo?("#{candidato}")
			return candidato
		end
	end
	return -Float::INFINITY
end



def maximo_palindromo(maximo_factor_permitido)
	solucion_parcial = -Float::INFINITY
	entero = maximo_factor_permitido
	while entero > 0 && solucion_parcial < entero * entero	#voy a buscar mientras exista la posibilidad de mejorar la solución
		candidato = maximo_palindromo_de_n(entero,solucion_parcial)
		solucion_parcial = [solucion_parcial, candidato].max 
		entero -= 1
	end
	return cota
end


 puts maximo_palindromo(999)


__END__




ENUNCIADO DEL PROBLEMA:


A palindromic number reads the same both ways.
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99

Find the largest palindrome made from the product of two 3-digit numbers.




EXPLICACIÓN DE LA RESOLUCIÓN:


