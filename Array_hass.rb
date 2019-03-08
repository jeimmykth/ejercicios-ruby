
def  frecuencia(array)
    resultado= {}
    array.each{|n|
        if resultado[n]== nil
            resultado[n]= 1
            
        else
            resultado[n]+=1
            
        end
    }
    
    resultado
end

puts frecuencia([1,2,3,4,5,2,3,5,4,2,3,3])