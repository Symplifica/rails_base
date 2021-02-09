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
#  is_process     :boolean          default(FALSE)
#  nde            :string
#  novedad_retiro :string
#  np             :string
#  tde            :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe TableRemote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
