#cd /media/Datos/Mauro/Ruby/Euler

puts from_1_to_9 = "onetwothreefourfivesixseveneightnine".size
teens = "teneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen".size
tens = "twentythirtyfortyfiftysixtyseventyeightyninety".size

first_99 = from_1_to_9 + teens + tens + tens * 9 + 8 * from_1_to_9

hundreds = from_1_to_9 + 9 * "hundred".size

from_100_to_999 =  hundreds +
                   (from_1_to_9 + "hundredand".size * 9) * 99 + 9 * first_99

puts first_thousand = first_99 + from_100_to_999 + "onethousand".size




__END__






PROBLEM:

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
