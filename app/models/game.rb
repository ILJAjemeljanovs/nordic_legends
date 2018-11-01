class Game < ApplicationRecord
  has_one :deck
  has_many :players
end

# == Schema Information
#
# Table name: games
#
#  id          :bigint(8)        not null, primary key
#  rule_set_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
