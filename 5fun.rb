
puts "WELCOME !"
puts "cuantos años tienes? "

edad = gets.to_i


edad_apropiada=""
if edad = (edad>=21)
edad_apropiada ="puedes" 
else 
    edad_apropiada = "no puedes"
end

puts "a tu edad #{edad_apropiada} consumir alcohol"