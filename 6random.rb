aleatorio =Random.rand(1..10)
    
 puts "adivina un numero del 1 al 10"
 numero = gets.to_i

 if numero == aleatorio

   puts "Felicidades!! adivinaste"
   else 
    puts "Intentalo de nuevo"

 end

   if aleatorio>numero
    puts "busca un numero mas alto!!!"
   else  
    puts "busca un numero mas bajito"

