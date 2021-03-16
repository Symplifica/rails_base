
# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area_id    :bigint
#
# Indexes
#
#  index_categories_on_area_id  (area_id)
#

class Category < ApplicationRecord
  has_many :tickets
  belongs_to :area
end
