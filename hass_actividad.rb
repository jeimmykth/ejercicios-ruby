
persona1 ={
    name: "Diana",
    lastname: "Montaña",
    programming:"Ruby"
}
 persona1[:nickname]= "mayerly"


 persona2 ={
     name: "maxiel",
     lastname: "camargo",
     programming: "Ruby",
     nickname:"Max"

 }

def saludo(persona)
  p "Hola soy #{persona[:name]} #{persona[:lastname]} Programo en #{persona[:programming]} y me puedes llamar #{persona[:nickname]}"
end

 puts"Buen dia diligendia la sigueinte informacion"
 
 puts"name"
 nombre=gets.chomp
 puts"lastname"
 apellido= gets.chomp 
 puts" programming"
 pi=gets.chomp 
 puts"nickname"
 apodo=gets.chomp

class Test

  def initialize()
    @array = []
  end

  def crearEstudiante(name, lastname, programming, nickname)

    hashPersona = {name: name, lastname: lastname, programming: programming, nickname: nickname}
    @array.push(hashPersona)
  end

  def imprimirEstudiantes
    @array.each do |n|
      print "Hola #{n}"
    end
  end

  def contarEstudiantes
    print @array.count
  end

  def saludarMayoresDeEdad

    @array.each do |n|

      if (n.edad >= 18)
        #saludar
      end

    end
  end
end

test = Test.new
test.crearEstudiante("Dany", "Diaz", "Java", "Kasuma")
test.imprimirEstudiantes