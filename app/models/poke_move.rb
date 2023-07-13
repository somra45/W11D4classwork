# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  move_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
  validates :move_id, uniqueness: { scope: :pokemon_id,
    message: "pokemon cannot have the same move more than once" } 
  
  belongs_to :pokemon,
    class_name: :Pokemon, 
    foreign_key: :pokemon_id,
    dependent: :destroy
  
  belongs_to :move,
    class_name: :Move, 
    foreign_key: :move_id,
    dependent: :destroy
    
end
