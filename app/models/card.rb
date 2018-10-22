class Card < ApplicationRecord
  belongs_to :card_archetype
  belongs_to :deck
end
