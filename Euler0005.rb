#cd /media/Datos/Mauro/Ruby/Euler


# I repeat the idea of Euler0003 to find factors on an integer:
class Integer
  def decomposition
    #I shall put the factors as keys and the powers as values of a Hash
    decomposition = Hash[]
    if self == 1 #This is to avoid the pathological case of n=1
      decomposition[1] = 1
      return decomposition
    end
    n=2
    integer = self
    until integer == 1
      if integer % n == 0
        decomposition[n] = decomposition.member?(n) ? decomposition[n] +1 : 1
        integer /= n
      else
        n += 1
      end
    end
    return decomposition
  end

  # least common multiple
  def lcm(number)
    factors1 = self.decomposition
    factors2 = number.decomposition
    mcm_hash = factors1.merge(factors2) { |_, power1, power2| [power1, power2].max }
    lcm = 1
    mcm_num = mcm_hash.each { |factor, power| lcm *= factor**power }
    return lcm
  end
end

#Calculates the lcm between all the parameters inside a collection
def super_lcm(collection)
  super_lcm = 1
  collection.each { |integer| super_lcm = super_lcm.lcm(integer) }
  return super_lcm
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
