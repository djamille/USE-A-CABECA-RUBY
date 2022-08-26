#Jogo "Advinhe meu número!"
#Escrito por Djamille Vieira

puts "Welcome to 'Get My Number'"
print "What´s your name?"
input = gets.chomp
name = input.chomp   #pode ser colocado direto name.gets.chomp
puts "Welcome, #{input}!"

puts "I've got a random number between 1 and 100."  #Eu tenho um número aleatório entre 1 e 100
puts "Can you guess it?"   #você pode adivinhar?
target = rand(100) + 1  #rand vai pegar um numero aleatorio, eu colocaria entre parentees direto 101.

num_guesses = 0    #numero de tentativas

guessed_it = false    #monitora se o jogador acertou. Sera usado tb como o termino do loop ap se tornar true com o acerto

until num_guesses == 10 || guessed_it  #loop vai parar na 10ª tentativa e enquanto os palpites forem FALSE

    puts "You've got #{10 - num_guesses} guesses left."    #Voce tem (numero de tentativas inicial - numero de tentativas ja feitas) palpites
    print "Make a guess: "     #Faça um palpite
    guess = gets.to_i           #Palpite

    num_guesses += 1

    #nas condiçoes abaixo sera comparado o numero sugerido pelo jogado com o numero sorteado, se gor maior ou menor ele vai imprimir uma mensagem, 
    # se for igual sera impressa outra mensagem e o termino do LOOP pois a comparacao foi TRUE
    if guess < target
        puts "Ops. Your guess was LOW"
    elsif guess > target
        puts "Ops. Your guess was HIGH"
    elsif guess == target
        puts "Good job, #{name}!"
        puts " You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end
end

#Se o jogador ficar sem tentativas, mostrar qual era o numero
unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target})."
end