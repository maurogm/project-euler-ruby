#cd /media/Datos/Mauro/Ruby/Euler

def brute_force(integer)
	candidatos = (1...integer).to_a
	sol = 1
	record = 0
	while candidatos.length > 0
		n=candidatos[0]
		len = 0
		while n > 1	
			if n%2 == 0
				n = n/2
			else
				n = 3*n+1
			end
			len += 1
		end
		if len >= record
			record = len
			sol = candidatos[0]
		end
		candidatos.shift
		puts candidatos.length
	end
	return sol, record
end


sol, record = brute_force(1000000)

puts sol
puts record



__END__





INTENTO 2:

def children(n)
	children = [2*n]
	if (n-1) % 3 == 0 && ((n-1)/3) % 2 == 1
			children << (n-1)/3
	end
	return children
end

def new_generation(array)
	new_generation = []
	for i in 0...array.length
		new_generation += children(array[i])
	end
	return new_generation
end

def count_valid_candidates(array,upper_bound)
	n = 0
	for i in (array.length-1).downto(0)
		if array[i] <= upper_bound	
			n += 1
		end
	end
	return n
end

def problem(bound)
	current_generation = [8]
	discarded_candidates = 4
	number_of_generation = 4
	while discarded_candidates < bound
		current_generation = new_generation(current_generation)
		puts discarded_candidates += count_valid_candidates(current_generation, bound)
		puts number_of_generation += 1
	end
	return filter!(current_generation, bound), number_of_generation
end

def filter!(array, upper_bound)
	for i in (array.length-1).downto(0)
		if array[i] >= upper_bound	
			array.delete(array[i])
		end
	end
	return array
end


a, b = problem(100)
print a
puts
puts b





INTENTO 1:

def mayor_cadena_de_collatz
	candidatos = (1...1000000).to_a
	candidatos.shift
	resultados = Hash[1,0]
	sol = 1
	record = 0
	while candidatos.length > 0
		n=candidatos[-1]
		cadena = [n]
		while n > 1	
			if n%2 == 0
				n = n/2
			else
				n = 3*n+1
			end
			if resultados[n].nil?
				#Si no está en resultados, lo meto en la cadena
				cadena << n
			else
				#Si está en resultados, quiere decir que conozco su distancia al 1
				#Entonces, puedo calcular la distancia de todos los miembros de cadena al 1
				d_cadena = cadena.length
				d_candidato = resultados[n] + d_cadena
				n == 1
				if d_candidato > record
					# Si la distancia del candidato al 1 es la mayor hasta el momento,
					# entonces guardamos al candidato en la variable "sol"
					sol = candidatos[-1]
					record = d_candidato
				end
				#Ingreso las distancias de los miembros de cadena al hash de resultados
				#Además, los saco de la lista de candidatos
				for i in 0...d_cadena
					resultados[cadena[i]] = d_candidato - i
					candidatos.delete(cadena[i])
				end
			end
		end
		print candidatos.length, "<- Candidatos. Sol= ",sol,". Record = ",record
		puts
	end
	return sol
end


puts mayor_cadena_de_collatz







__END__




PROBLEM:

The following iterative sequence is defined for the set of positive integers:

n  n/2 (n is even)
n  3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.


