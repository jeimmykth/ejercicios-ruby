
class Persona 
   attr_accessor :name, :ege, :gender

    def initialize(name,age,gender)
        @name=name
        @age=age
        @gender=gender     
    end  
end
 
class Apartamento
   attr_accessor :nombre, :price, :sqft, :num_beds, :num_baths, :renter

     def initialize(nombre,price,sqft,num_beds,num_baths)
       @nombre=nombre
       @price=price
       @sqft=sqft
       @num_beds=num_beds
       @num_baths=num_baths
       @renter=nil
     end   
end

class Edificio
   attr_accessor  :name, :carrera, :calle, :number, :num_floors
    
      def initialize(name, carrera, calle, number, num_floors)
       @name = name
       @carrera = carrera
       @calle = calle
       @number = number
       @num_floors = num_floors 
       @apartamentos=[]  
      end

      def detalles_construccion
         puts "-Nombre:#{name} -Direccion:#{carrera}#{calle}#{number} -Numero de pisos:#{num_floors}" 
      end

      def agregar_apto

         puts "Ingrese la información del apartamento:"

         print "Nombre: "
         nombre=gets.chomp

         print "Precio: $"
         price=gets.to_i

         print "SQFT: "
         sqft=gets.chomp

         print "Número de camas: "
         num_beds=gets.to_i

         print "Número de baños: "
         num_baths = gets.to_i

         nue_apartamento= Apartamento.new(nombre,price,sqft,num_beds,num_baths)

         @apartamentos.push(nue_apartamento)

      end   

      def agregar_inquilino

         puts "Ingrese el nombre del apartamento que desea alquilar: "
         nombre_apartamento = gets.chomp

         nue_apartamento=apartamentos
         .select{|n|n.name == nombre_apartamento}
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

               nue_inquilino=Persona.new(name,age,gender)

               apartment.renter = nue_inquilino

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

@edificio = Edificio.new("Imperial", "Carrera1", "Calle1", "13", 5)

def menu 
    
   puts "MENU"
   puts "SELECCIONE UNA DE LAS SIGUIENTES OPCIONES:"
   puts "1. Ver detalle de la construcción"
   puts "2. Añadir un apartamento al edificio"
   puts "3. Agregar un inquilino"
   puts "4. Listar el directorio de apartamentos para el edificio"
   puts ". Salir"
 
   info = gets.to_i

  if info == 1
   @edificio.detalles_construccion
   menu
 elsif info == 2
   @edificio.agregar_apto
   menu
 elsif info == 3
   @edificio.agregar_inquilino
   menu
 elsif info == 4
   @edificio.listar_apartamentos
   menu
 else
   exit
 end
end

  menu


