# == Schema Information
#
# Table name: statuses
#
#  id         :bigint           not null, primary key
#  closed     :boolean
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area_id    :bigint
#
# Indexes
#
#  index_statuses_on_area_id  (area_id)
#

class Status < ApplicationRecord

  belongs_to :area
  has_many :tickets
end
