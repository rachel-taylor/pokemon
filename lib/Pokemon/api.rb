class Pokemon::API
  
  def initialize(num)
    poke = open("https://pokeapi.co/api/v2/pokemon/#{num}/").read
    @json = JSON.parse(poke)
    @@all.push(self) 
  end 
  
  def get_name
    @json["name"]
  end 
  
  def get_abilities
    @json["abilities"].map do |ability|
      ability["ability"]["name"]
    end 
  end 
  
  @@all = []
  
end 