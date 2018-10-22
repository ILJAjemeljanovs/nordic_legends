class CardArchetype < ApplicationRecord
  has_many :cards
end

# == Schema Information
#
# Table name: card_archetypes
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  type        :string(255)
#  subtype     :string(255)
#  description :text(65535)
#  item_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
