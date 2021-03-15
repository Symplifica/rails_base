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
class Status < ApplicationRecord

  enum kind: { general: 0, sac: 1, sales: 2, ops: 3  }

  has_many :tickets
end
