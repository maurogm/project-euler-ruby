#cd /media/Datos/Mauro/Ruby/Euler


for a in 1...333
	for b in a..(1000-a)/2
		c = 1000 - a - b
		if c**2 == a**2 + b**2 
			print "The maximum is #{a*b*c} y and it's reached in [a,b,c] = #{[a,b,c]} \n"
			break
		end
	end
end



 

__END__




ENUNCIADO DEL PROBLEMA:

http://projecteuler.net/problem=9




