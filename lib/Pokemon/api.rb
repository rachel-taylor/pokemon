class Pokemon::API
  
  def initialize(num)
    poke = open("https://pokeapi.co/api/v2/pokemon/#{num}/").read
    @json = JSON.parse(poke)
  end 
  
  def get_name
    # binding.pry
   return @json["name"]
  end 
  
  def get_abilities
    @json["abilities"].map do |ability|
      ability["ability"]["name"]
    end 
  end 
  
end 