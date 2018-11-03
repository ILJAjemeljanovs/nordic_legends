class Galery < ApplicationRecord
  has_many :items
  validates_presence_of :name, message: "Name should not be blank!"
end

# == Schema Information
#
# Table name: galeries
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
