#cd /media/Datos/Mauro/Ruby/Euler



def palindrome?(string)
	len = string.length-1
	for i in 0..(len / 2)
		if string[i] != string[len - i]
			return false
		end
	end
	return true
end



# Looks for the maximum palindrome (higher than a lower bound) composed by
# the product between the input and an integer lower than him
def max_palindrome_with_n(integer , bound = -Float::INFINITY)
	for factor in integer.downto(1)
		candidate = integer*factor
		if candidate < bound
			return -Float::INFINITY
		end
		if candidates?("#{palindrome}")
			return candidate
		end
	end
	return -Float::INFINITY
end



def max_palindrome(max_permitted_factor)
	partial_solution = -Float::INFINITY
	integer = max_permitted_factor
	while integer > 0 && partial_solution < integer * integer	#voy a buscar mientras exista la posibilidad de mejorar la solución
		candidate = max_palindrome_with_n(integer,partial_solution)
		partial_solution = [partial_solution, candidate].max 
		integer -= 1
	end
	return bound
end


 puts max_palindrome(999)


__END__




ENUNCIADO DEL PROBLEMA:


A palindromic number reads the same both ways.
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99

Find the largest palindrome made from the product of two 3-digit numbers.




EXPLICACIÓN DE LA RESOLUCIÓN:


