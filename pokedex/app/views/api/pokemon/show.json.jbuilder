# render all the information about a single pokemon, including its items and moves

json.pokemon do 
    json.set! @poke.id do 
        json.extract! @poke, :id, :name, :attack, :defense, :poke_type
        json.image_url asset_path("pokemon_snaps/#{@poke.image_url}")
    end
end

json.moves do #key will be moves
    @poke.moves.each do |move| #vales will start here
        json.set! move.id do 
            json.extract! move, :id, :name
        end
    end
end