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
require 'rails_helper'

RSpec.describe Status, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
