=begin

def print_hello(repeticiones)
    i = 0
    while i < repeticiones
        puts "Saludo"
        i += 1
    end
end

answer = 0
while answer < 5
    print "¿Cuantas veces repetimos? (+ de 5 se acaba la broma)"
    answer = gets.chomp.to_i
    print_hello(answer)
end

answer = ""

until answer == "no" do
    print "¿Escribimos de nuevo? (si/no): "
    answer = gets.chomp
end

array = [0,1,2,3,4,5,6,7]

array.each do |valor|
    valor = valor + 2
    puts "El valor en este momento es: #{valor}"
end

puts array.inspect

business = {"name" => "Pixelpro", "location" => "Madrid, MA"}

business.each do |key, value|
    puts "La clave es de #{key} y el valor es #{value}"
end
business.each do |key|
    puts "La clave es de #{key}"
end
business.each do |value|
    puts "El valor es #{value}"
end

5.times do
    puts "Hola"
end
5.times do |item|
    puts "Hola #{item}"
end

for item in ["Pixelpro", "Cursos","Online"]
    puts "El valor es #{item}"
end

=end

# Condiciones:
# 1. Creamos un hash con dos claves, nombre = string y telefono = array
# 2. Añadimos el nombre con el metodo ask
# 3. Añadimos el telefono y preguntamos si quiere añadir otro
# 4. Meter un loop para ver si tiene más telefonos


def ask(question, kind="string") #kind indica la clase o tipo de parametro que se esta pasando
    print question + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end
  
def add_contact
    #Creamos un hash con dos claves, nombre que es un string y telefono que es un array
    contact = {"name" => "", "phone_numbers" => []}
    #añadimos el nombre con el metodo ask creado previamente
    contact["name"] = ask("Introduce el nombre del contacto:")
    answer = ""
    #Usamos un loop para ver si quiere añadir más o cerrar el programa
    while answer != "n"
      answer = ask("¿Quieres añadir un número de teléfono? (s/n)")
      #Si dice que si, volvemos a usar el metodo ask para pedir el telefono, si sigue añadiendo entremos en blucle
      if answer == "s"
        phone = ask("Introduce el número:")
        contact["phone_numbers"].push(phone)
      end
    end
    return contact
end
  
contact_list = []
  
answer = ""
while answer != "n"
    contact_list.push(add_contact())
    #Preguntamos si quiere añadir otro contacto
    answer = ask("¿Quieres añadir otro contacto? (s/n)")
end

=begin

=end


if(contact_list.length == 0)
    puts "La lista de contactos esta vacía"
else
    puts "El contenido de la lista de contactos es el siguiente"
    
    contact_list.each do |contact|
        contact.each do |key, value|
            if(key == "name")
                puts "Nombre del contacto: #{value}"
            else
                if(value.length > 0)
                    numbers = ""
                    value.each do |valor|
                        numbers = numbers + valor + ", "
                    end
                    puts "Telefono(s) del contacto es: #{numbers}" 
                else
                    puts "No tiene telefonos"
                end
            end
        end
        
    end
end