puts "WELCOME ! podras calcular que edad tendras en 75 años !!!"
puts "¿cual es tu nombre?"
nombre = gets.chomp
puts "cuantos años tienes "
edad = gets.to_i

puts "hola #{nombre} tienes #{edad} años"

cuanto = 75 - edad

puts "Tu tendras 75 años en #{cuanto} años"
nombreIgual = nombre.eql?("jeff")
puts "Es igual? #{nombreIgual}"

if nombre == "jeff"   
    puts "es verdad que tu nombre es jeff"
else
    puts "tu nombre no es jeff "
end 

 puts "Adios"