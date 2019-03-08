class Persona

    attr_accessor :age, :name, :gender
  
    def initialize(name, age, gender)
      @name = name
      @age = age  
      @gender = gender
    end
  
end
  
class Apartamento
  
    attr_accessor :name, :num_beds, :num_baths, :sqft, :price, :renter
  
    def initialize(name, price, sqft, num_beds, num_baths)
      @name = name
      @price = price
      @sqft = sqft
      @num_beds = num_beds
      @num_baths = num_baths
      @renter = nil
    end
end
  
class Edificio
  
    attr_accessor :carrera, :calle, :name, :num_floors, :number, :apartments
  
    def initialize(name, carrera, calle, number, num_floors)
      @name = name
      @carrera = carrera
      @calle = calle
      @number = number
      @num_floors = num_floors
      @apartments = []
    end

    def ver_detalle_construccion
      puts "Nombre: #{@name} - Direccion: #{carrera} #{calle} #{number} - Numero de Pisos: #{num_floors} - Numero de Apartamentos: #{apartments.count}"
    end
  
    def agregar_apartamento
  
      puts "Ingrese la información del apartamento:"
  
      print "Nombre: "
      name = gets.chomp
  
      print "Precio: "
      price = gets.to_i
  
      print "SQFT: "
      sqft = gets.to_i
  
      print "Número de camas: "
      num_beds = gets.to_i
  
      print "Número de baños: "
      num_baths = gets.to_i
  
      apartment = Apartamento.new(name, price, sqft, num_beds, num_baths)
  
      @apartments.push(apartment)
    end

    def agregar_inquilino
  
      puts "Ingrese el nombre del apartamento que desea alquilar: "
      nombre_apartamento = gets.chomp
  
      apartment = apartments
          .select{|n| n.name == nombre_apartamento}
          .first
  
      if apartment != nil
  
        if apartment.renter == nil
  
          puts "Ingrese la información del inquilino"
  
          print "Nombre: "
          name = gets.chomp
  
          print "Edad: "
          age = gets.to_i
  
          print "Genero: "
          gender = gets.chomp
  
          persona = Persona.new(name, age, gender)

          apartment.renter = persona
  
        else
          puts "El apartamento con el nombre: #{nombre_apartamento} ya se encuentra alquilado"
        end
  
      else
        puts "No existe un apartamento con el nombre: #{nombre_apartamento}"
      end
    end
  
    def listar_apartamentos
  
      @apartments
          .select{|apartment| apartment.renter == nil}
          .each do |apartment|
            puts "#{apartment.name} es de #{apartment.sqft} metros cuadrados, tiene #{apartment.num_beds} camas y #{apartment.num_baths} baño. Cuesta #{apartment.price} al mes"
          end
  
      @apartments
          .select{|apartment| apartment.renter != nil}
          .each do |apartment|
            puts "#{apartment.renter.name} vive en #{apartment.name}"
          end
  
    end

end

  @edificio = Edificio.new("Edificio1", "Carrera1", "Calle1", "13", 5)
  
  def mostrar_menu()
  
    puts "MENU"
    puts "SELECCIONE UNA DE LAS SIGUIENTES OPCIONES:"
    puts "1. Ver detalle de la construcción"
    puts "2. Añadir un apartamento al edificio"
    puts "3. Agregar un inquilino"
    puts "4. Listar el directorio de apartamentos para el edificio"
    puts "_. Salir"
  
    info = gets.to_i
  
    if info == 1
      @edificio.ver_detalle_construccion
      mostrar_menu
    elsif info == 2
      @edificio.agregar_apartamento
      mostrar_menu
    elsif info == 3
      @edificio.agregar_inquilino
      mostrar_menu
    elsif info == 4
      @edificio.listar_apartamentos
      mostrar_menu
    else
      exit
    end
  end
  
  mostrar_menu