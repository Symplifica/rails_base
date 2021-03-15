# == Schema Information
#
# Table name: tickets
#
#  id           :bigint           not null, primary key
#  area         :integer
#  category     :integer
#  details      :string
#  email        :string
#  name         :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe Ticket, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
