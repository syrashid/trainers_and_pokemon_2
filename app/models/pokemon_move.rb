class PokemonMove < ApplicationRecord
  belongs_to :pokemon
  belongs_to :move

  validates :move, uniqueness: { scope: :pokemon,
    message: "already added" }
end
