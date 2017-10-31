random_number = Random.new.rand(5)

# puts random_number

=begin

1) Pregunte por un numero del 1 al 5 (pulse 6 para salir)
2) Verificar si acierta o no el numero, sino acierta puede intertarlo de nuevo y si acierta acaba el juego.

=end

def adivina_numero()
    random_number = Random.new.rand(5)
    loop do
        print "Adivina un numero entre el 0 y 5 (pulse e para salir): "
        answer = gets.chomp
        if answer == "e"
            puts "El numero era: #{random_number}"
            break
        else
            if answer.to_i == random_number
                puts "Ueeeee!! Lo has acertado!!"
                break
            else
                puts "Has estado cerca, intentalo de nuevo!!"
            end
        end
    end
end 

puts "Buenos días..."
sleep 2
adivina_numero   
