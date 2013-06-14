#cd /media/Datos/Mauro/Ruby/Euler

number = (2**1000).to_s

digits = number.split(//)

puts sum = digits.reduce(0) { |acum, x| acum + x.to_i }


__END__






PROBLEM:

2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?

