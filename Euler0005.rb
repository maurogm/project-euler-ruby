#cd /media/Datos/Mauro/Ruby/Euler




# Repito la idea del Euler0003 para encontrar factores de un entero:
def descomposicion(entero)
	#Voy a poner los factores como llave y las potencias como valor de un Hash
	factores = Hash[]
	if entero == 1 	#Hago esta salvedad para evitar el caso patológico del 1
		factores[1]=1
		return factores
	end
	n=2
	while n <= entero
		if entero%n == 0
			if factores.member?(n) #Si ya había dividido antes por n, sumo 1 al valor de la potencia
				factores[n] += 1
			else
				factores[n] = 1 	#Si es la primera vez que divido por n, lo agrego al Hash, con potencia 1
			end
			entero = entero / n
			if entero == 1 			#Si el entero es 1, es que ya dividí por todos sus factores
				return factores
			end
		else
			n += 1			
		end
	end
end


def mcm(n,m)
	# Descompongo en Hashs a los dos parámetros:
	factores1 = descomposicion(n)
	factores2 = descomposicion(m)
	# Fusiono las descomposiciones, sumando las potencias de los factores repetidos:
	mcm_hash = factores1.merge(factores2){|factor,potencia1,potencia2| [potencia1,potencia2].max}
	# Ahora que tengo el mcm, lo escribo de nuevo como entero:
	mcm = 1
	mcm_num = mcm_hash.each{|factor, potencia| mcm *= factor**potencia}
	return mcm
end


#Calcula el mcm entre todos los parámetros que se pasan en una colección
def super_mcm(coleccion)
	a = 1
	for n in coleccion
		a=mcm(a,n)
	end
	return a
end

puts super_mcm(2..20)


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
