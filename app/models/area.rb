# == Schema Information
#
# Table name: areas
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ApplicationRecord
  has_many :tickets
  has_many :statuses
  has_many :categories
  has_many :agents
end
