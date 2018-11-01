class Deck < ApplicationRecord
  belongs_to :game
  has_many :cards
end

# == Schema Information
#
# Table name: decks
#
#  id           :bigint(8)        not null, primary key
#  cover        :text(65535)
#  rules_set_id :integer
#  game_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
