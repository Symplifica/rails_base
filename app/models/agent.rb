
# == Schema Information
#
# Table name: agents
#
#  id         :bigint           not null, primary key
#  name       :string
#  sid_worker :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area_id    :bigint
#
# Indexes
#
#  index_agents_on_area_id  (area_id)
#

class Agent < ApplicationRecord
  has_many :tickets
  belongs_to :area

  searchkick

  def search_data
    attributes.merge(custom_data)
  end

  def custom_data
    {
      area_name: area.nil? ? "sin area" : area.name,
    }
  end
end
