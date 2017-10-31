def saludo
    puts "Buenos días, bienvenido a AulaOnLine."
    sleep 2
end

def recoger_numero(param)
    print param + " "
    gets.to_f
end

def calcular(num1,num2,num3,num4)
    suma = num1 + num2 + num3 + num4 
    media = suma / 4.0
    puts "La media de los 4 numeros es #{media}" 
end

saludo
puts "Vamos a calcular la media de 4 numeros"
sleep 1

a = recoger_numero("Valor para \"a\":")
b = recoger_numero("Valor para \"b\":")
c = recoger_numero("Valor para \"c\":")
d = recoger_numero("Valor para \"d\":")

calcular a,b,c,d

