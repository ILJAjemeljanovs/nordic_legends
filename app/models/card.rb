class Card < ApplicationRecord
  belongs_to :card_archetype
  belongs_to :deck
end

# == Schema Information
#
# Table name: cards
#
#  id                :bigint(8)        not null, primary key
#  played            :boolean
#  card_archetype_id :integer
#  deck_id           :integer
#  hand_id           :integer
#  batllefield_id    :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
