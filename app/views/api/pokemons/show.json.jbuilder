

json.extract! @pokemon, :id, :number, :name, :image_url, :poke_type, :captured, :created_at, :updated_at 
json.moves @pokemon.moves.map{ |move| move.name }