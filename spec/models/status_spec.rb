# == Schema Information
#
# Table name: statuses
#
#  id         :bigint           not null, primary key
#  closed     :boolean
#  kind       :integer          default("sac")
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Status, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
