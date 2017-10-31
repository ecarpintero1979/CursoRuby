=begin

Nuestro programa: 

1 - Salude a los usuarios
2 - Pida una cantidad al usuario (*de lo que sea*)
3 - Calcula el importe
4 - Haga descuentos por cantidad

=end


def momentito
    print "Un momento, estoy ocupado...  "
    sleep 5
    puts "Listo, ya estoy disponible."
    sleep 1
end

def saludo
   #puts "Buenos días, ¿en que puedo ayudarle?."
    puts "Buenos días, bienvenido a AulaOnLine."
    sleep 2
end

def say(param)
    print "Hola ", param , ", encantada de saludarte."
    sleep 1
    puts
end

def pregunta(param)
    print param + " "
    gets.chomp
end

valor_curso = 10

momentito
saludo
#say "Eva"

answer = pregunta("¿Cuantos cursos desea recibir? ")
puts "Ok, has pedido #{answer} cursos."
cursos = answer.to_i
puts "El precio para un total de #{answer} cusos es #{cursos *10}"