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
require 'rails_helper'

RSpec.describe Agent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
