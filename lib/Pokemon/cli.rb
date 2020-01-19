class Pokemon::CLI

    def call 
    greeting
    end 
    
    def greeting 
      puts "Welcome to Unova"
      puts "Please input a number between 1-807" 
      @num = gets.chomp.to_i
      @myPokemon = Pokemon::API.new(@num)
      puts @myPokemon.get_name
      pokemon 
    end 
    
    def pokemon 
      puts "Would you like to know the abilities it has? y/n?"
      if gets.chomp == 'y'
        evolution 
        goodbye 
      else 
        goodbye 
      end 
      #if yes put pokemon_info 
      #if no call goodbye
    end 
    
    def evolution
      @myPokemon
      puts @myPokemon.get_abilities
    end 
    
    def goodbye
        puts "Goodbye"
        puts "“I see now that one’s birth is irrelevant. It’s what you do that determines who you are.” – Mewtwo"
        exit
    end 
end