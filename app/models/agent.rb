
# == Schema Information
#
# Table name: agents
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Agent < ApplicationRecord
end
