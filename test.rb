=begin

suma 50, 100 #Es lo mismo que poner suma(50, 100)
resta 100,50 

# "Madrid #{Time.now}...."
name = "Jay Z"
puts "Hola #{name}, lo que sea"

puts 2.methods.sort
puts "2".methods.sort

p 7.class
p "Eva".class

entero = 12
decimal = 12.34

p entero.even?
p decimal.even?

producto = 25*3
cociente = 7.0/4

puts producto
puts cociente

a = 12
b = 7
c = 5
d = 10

puts 'Cuando escribes \t en un string con comillas dobles se muestra asi: '
#puts "Cuando escribes \\t en un string con comillas dobles se muestra asi: "
puts "David\tPiqué"
puts 'Cuando escribes \n en un string con comillas dobles se muestra asi: '
#puts "Cuando escribes \\n en un string con comillas dobles se muestra asi: "
puts "David\nPiqué"

loop do
    print "¿Quieres seguir? (s/n): "
    answer = gets.chomp.downcase
    if answer == "n"
        break
    end
end

=end

def espera(segundos)
    print "En espera... "
    sleep segundos
    puts "Listo!!"
end

#espera 3


def suma(primero, segundo)
    puts primero, segundo
    puts primero + segundo
end

def resta(primero, segundo)
    puts primero, segundo
    puts primero - segundo
end

def resta(primero, segundo)
    return primero - segundo
end

def saludo(pregunta)
    print pregunta
    gets
end

def repeat(string, times)
    fail "times debe ser 1 o mayor que 1" if times < 1
    counter = 0
    loop do
        puts string
        counter += 1
        if counter >= times
            break
        end
    end
end 

#repeat("Hola clase", 5)



