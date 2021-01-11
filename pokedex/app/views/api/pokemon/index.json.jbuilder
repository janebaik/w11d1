@pokemon.each do |poke| #to iterate thru pokemon
    json.set! poke.id do #to explicity set the key to the pokemon id
        json.extract! poke, :id, :name
        json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
    end
end

# # notes
# # Extract: extract attributes from array directly.
# # @people = People.all
# json.array! @people, :id, :name
# # => [ { "id": 1, "name": "David" }, { "id": 2, "name": "Jamie" } ]
