class Pokemon::CLI

    def call 
    greeting
    end 
    
    def greeting 
      puts "Welcome to Unova"
      number 
    end 
    
    def number
      puts "Please input a number between 1-807" 
      @num = gets.chomp.to_i
      @myPokemon = Pokemon::API.new(@num)
      puts @myPokemon.get_name
      pokemon 
    end 
    
    def pokemon 
      puts "Would you like to know it's abilities? y/n?"
      if gets.chomp == 'y'
        evolution
      # else 
      #   goodbye 
      end 
      #if yes put pokemon_info 
      #if no call goodbye
      puts "Would you like to see another? y/n"
      if gets.chomp == 'y'
        another
      else 
        goodbye
      end 
    end 
    
    def evolution
      @myPokemon
      puts @myPokemon.get_abilities
    end 
    
    def another
      number
      pokemon
    end 
    
    def goodbye
        puts "Goodbye"
        puts "“I see now that one’s birth is irrelevant. It’s what you do that determines who you are.” – Mewtwo"
        exit
    end 
end