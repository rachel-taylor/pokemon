class Pokemon::API
  
  def get_name
   name = open("https://pokeapi.co/api/v2/").read
   json = JSON.parse(response)
  end 
  
end 