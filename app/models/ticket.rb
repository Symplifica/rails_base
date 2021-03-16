# == Schema Information
#
# Table name: tickets
#
#  id           :bigint           not null, primary key
#  details      :string
#  email        :string
#  name         :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  agent_id     :bigint
#  category_id  :bigint
#  status_id    :bigint
#
# Indexes
#
#  index_tickets_on_agent_id     (agent_id)
#  index_tickets_on_category_id  (category_id)
#  index_tickets_on_status_id    (status_id)
#

class Ticket < ApplicationRecord
  # enum area: { ventas: 0, sac: 1, operaciones: 2 }
  # enum category: { cat1: 0, cat111: 1, cat11: 2 }

  searchkick

  belongs_to :status
  belongs_to :category
  belongs_to :agent
  has_one :area, through: :category

  def search_data
    attributes.merge(custom_data)
  end

  def custom_data
    {
      category_name: category.nil? ? "sin categoria" : category.name,
      agent_name: agent.nil? ? "sin agente" : agent.name,
      area_name: area.nil? ? "sin area" : area.name,
      status_name: status.nil? ? "sin status" : status.name,
      # products: products.count
    }
  end
end
