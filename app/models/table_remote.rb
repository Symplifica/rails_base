# == Schema Information
#
# Table name: table_remotes
#
#  id             :bigint           not null, primary key
#  dsnd           :string
#  dsnr           :string
#  dspa           :string
#  dspn           :string
#  dsrs           :string
#  dssa           :string
#  dssn           :string
#  dstd           :string
#  fenr           :string
#  nde            :string
#  novedad_retiro :string
#  np             :string
#  tde            :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class TableRemote < ApplicationRecord
end
