#cd /media/Datos/Mauro/Ruby/Euler




# I repeat the idea of Euler0003 to find factors on an integer:
def decomposition(integer)
	#I shall put the factors as keys and the powers as values of a Hash
	factors = Hash[]
	if integer == 1 	#This is to avoid the pathological case of n=1
		factors[1]=1
		return factors
	end
	n=2
	while n <= integer
		if integer%n == 0
			if factors.member?(n) #If I had divided by n before, I add 1 to the power's value
				factors[n] += 1
			else
				factors[n] = 1 	#I this is the first time I'm dividing by n, I add it to the Hash, con power = 1
			end
			integer = integer / n
			if integer == 1 			#If the integer is 1, it's because I have alredy divided him by all his of his factors
				return factors
			end
		else
			n += 1			
		end
	end
end

# least common multiple
def lcm(n,m)
	# I decompose in Hashs both parameters:
	factors1 = decomposition(n)
	factors2 = decomposition(m)
	# I mersh the decompositions, summing the powers of repeted factors:
	mcm_hash = factors1.merge(factors2){|factor,power1,power2| [power1,power2].max}
	# Now than I have the lcm, I rewrite it as an Integer:
	lcm = 1
	mcm_num = mcm_hash.each{|factor, power| lcm *= factor**power}
	return lcm
end


#Calculates the lcm between all the parameters inside a collection
def super_lcm(collection)
	a = 1
	for n in collection
		a=lcm(a,n)
	end
	return a
end

puts super_lcm(2..20)


__END__




ENUNCIADO DEL PROBLEMA:


2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?




OBSERVACION:

Después de terminar me quise hacer el poronga y definir una clase Factorizacion,
heredada de Hash, que me permitiera escribir más elegantemente todo lo que hice.

La idea era implementar un método para pasar de Factorizacion a Fixnum, e incluso
otro para pasar de Fixnum a Factorización (agregando así un método a la clase Fixnum).

Fracasé estrepitosamente.
Por alguna razón, no reconocía los métodos que implemntaba dentro de las clases.
