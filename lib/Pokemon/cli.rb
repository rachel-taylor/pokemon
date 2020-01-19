class Pokemon::CLI

    def call 
    greeting
    end 
    
    def greeting 
      puts "Welcome to the Unova"
      puts "Please input a number between 1-100" #actually 897 Pokemon in Pokedex 
      gets.chomp.to_i
    end 
    
    def pokemon 
      #puts name of pokemon
      puts "Would you like more information? Y/N?"
      #if yes put pokemon_info 
      #if no call goodbye
    end 
    
    def goodbye
        puts "Goodbye"
        puts "“I see now that one’s birth is irrelevant. It’s what you do that determines who you are.” – Mewtwo"
        exit
    end 
end