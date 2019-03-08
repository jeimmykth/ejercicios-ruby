class Calculadora
 
    def suma(n1,n2)
        n1+n2
       
    end
    def resta(o1,o2)
        o1-o2
       
    end
    def multiplicacion(p1,p2)
        p1*p2
       
    end
    def dividir(q1,q2)
        q1/q2
       
    end
    
   puts "Bienvenido"
   
   hola=
   numero_1 = 
   numero_2=
   while (hola!= 5)
   
   puts "menu de opciones"
   puts "       (1) sumar
          (2) resta
          (3) multiplicar
          (4) dividir
          (5) salir"
          
   hola=gets.to_i
   puts "ingresa numero_1"
   numero_1 = gets.to_i
   puts "ingresa numero_2"
   numero_2= gets.to_i
   
   
      if     hola==1
       resultado=suma(numero_1,numero_2)
      
     
      elsif  hola ==2
       resultado=resta(numero_1,numero_2)
     
      elsif hola ==3 
       resultado=multiplicacion(numero_1,numero_2)
     
      elsif hola ==4 
       resultado=dividir(numero_1,numero_2)
     
      elsif hola ==5
       resultado=  "adios"
      end 
   
    puts "resultado= #{resultado}"
   end
    end
    
     cal= Calculadora.new
    
      puts cal