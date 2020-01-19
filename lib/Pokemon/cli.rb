class Pokemon::CLI

    def call 
    greeting
    end 
    
    def greeting 
      puts "Welcome to Unova"
      puts "Please input a number between 1-100" #actually 897 Pokemon in Pokedex 
      # gets.chomp.to_i
      @num = gets.chomp.to_i
      puts Pokemon::API.get_name(@num)
      pokemon 
    end 
    
    def pokemon 
      puts "Would you like more information? y/n?"
      if gets.chomp == 'y'
        evolution 
      else 
        goodbye 
      end 
      #if yes put pokemon_info 
      #if no call goodbye
    end 
    
    def evolution
      puts Pokemon::API.get_abilities(@num)
    end 
    
    def goodbye
        puts "Goodbye"
        puts "“I see now that one’s birth is irrelevant. It’s what you do that determines who you are.” – Mewtwo"
        exit
    end 
end