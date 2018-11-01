class Item < ApplicationRecord
  belongs_to :galery

end

# == Schema Information
#
# Table name: items
#
#  id         :bigint(8)        not null, primary key
#  galery_id  :integer
#  crop_data  :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
