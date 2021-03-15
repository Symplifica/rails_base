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

class Ticket < ApplicationRecord
  enum area: { ventas: 0, sac: 1, operaciones: 2 }
  enum category: { cat1: 0, cat111: 1, cat11: 2 }

  # TODO add agents...

  searchkick
end
