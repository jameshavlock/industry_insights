# == Schema Information
#
# Table name: throughputs
#
#  id             :integer          not null, primary key
#  product        :string
#  quantity       :integer
#  supply_details :string
#  year           :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  facility_id    :integer
#
class Throughput < ApplicationRecord
end
