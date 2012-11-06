# racional_main.rb

require "racional"

fraccion1 = Racional.new(7,2)
fraccion2 = Racional.new(-8, 16)

printf("Fraccion 1: #{fraccion1.mostrar_fraccion} --> ")
puts "Valor: #{fraccion1.mostrar_flotante}"
printf("Fraccion 2: #{fraccion2.mostrar_fraccion} --> ")
puts "Valor: #{fraccion2.mostrar_flotante}"
puts "Es fraccion1 = fraccion2? --> #{fraccion1.==fraccion2}"
puts "Valor absoluto fraccion2: #{fraccion2.abs}"
puts "Fraccion1 reciproca: #{fraccion1.reciprocal}"
puts "Opuesta de la Fraccion1: #{-fraccion1}"
puts "Fraccion1 + Fraccion2: #{fraccion1+fraccion2}"
puts "Fraccion1 - Fraccion2: #{fraccion1-fraccion2}"
puts "Fraccion1 * Fraccion2: #{fraccion1*fraccion2}"
puts "Fraccion1 / Fraccion2: #{fraccion1/fraccion2}"
puts "El resto de las 2 fracciones: #{fraccion1%fraccion2}"
puts "Fraccion1 <= Fraccion2? --> #{fraccion1<=fraccion2}"
puts "Fraccion1 >= Fraccion2? --> #{fraccion1>=fraccion2}"
