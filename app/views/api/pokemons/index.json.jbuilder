@pokemons.each do |pokemon|
    # json.set! pokemon.id do

        json.extract! pokemon, :id, :number, :name, :image_url, :captured
    # end
        
end