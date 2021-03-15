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
#  area_id      :bigint
#  category_id  :bigint
#  status_id    :bigint
#
# Indexes
#
#  index_tickets_on_agent_id     (agent_id)
#  index_tickets_on_area_id      (area_id)
#  index_tickets_on_category_id  (category_id)
#  index_tickets_on_status_id    (status_id)
#
require 'rails_helper'

RSpec.describe Ticket, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
