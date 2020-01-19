class Pokemon::API
  
  def self.get_name(num)
   poke = open("https://pokeapi.co/api/v2/pokemon/#{num}/").read
   json = JSON.parse(poke)
   return json["name"]
  # binding.pry
  end 
  
  def self.get_abilities(num)
    poke = open("https://pokeapi.co/api/v2/pokemon/#{num}/").read
    json = JSON.parse(poke)
    return json["abilities"].map do |ability|
      ability["ability"]["name"]
      # binding.pry
    end 
  end 
end 