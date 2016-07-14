#função factorial
def factorial(number) #recebe um argumento que é o 
                        #número do qual quer se saber o fatorial
    counter = 1   #contador para laço while
    result = 1    #inicializador do fatorial, sempre 1.
    while counter <= number   #se for apenas < fica faltando uma multiplicação
        result *= counter  #faz n!
        counter +=1    #incrementa o contador para não ficar laço infinito
    end
    result   #retorna o resultado do fatorial
end

def reverse(string) #recebe a string argumento
    i = string.length-1   #estipula o numero de vezes do laço while
    new_string = ""   #cria a nova variavel para a string reversa
    while i >= 0 do
        new_string += string[i]   #adiciona as letras de trás para frente
        i -= 1     #decresce o contador
    end
    new_string      #retorna o resultado final
end

def sort(array)
    continua = true
    while continua
        continua = false
        (array.size - 1).times do |i|
            puts i
            if array[i] > array[i+1]
               array[i], array[i+1] = array[i+1], array[i]
               continua=true
            end
        end
    end
    return array
end

def upcase(string)
    letters = {'a'=>'A', 'b'=>'B','c'=>'C', 'd'=>'D', 'e'=>'E',
    'f'=>'F', 'g'=>'G', 'h'=>'H', 'i'=>'I', 'j'=>'J', 'k'=>'K',
    'l'=>'L', 'm'=>'M', 'n'=>'N', 'o'=>'O', 'p'=>'P', 'q'=>'Q',
    'r'=>'R', 's'=>'S', 't'=>'T', 'u'=>'U', 'v'=>'V', 'w'=>'W', 'x'=>'X',
    'y'=>'Y', 'z'=>'Z'}
    new_string = ""
    i = 0
    while i < string.size
        if letters[string[i]]
            new_string += letters[string[i]]
        else
            new_string += string[i]
        end
    i += 1
    end
    return new_string
end