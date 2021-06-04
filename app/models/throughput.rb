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

  belongs_to(:facility, { :required => false, :class_name => "Facility", :foreign_key => "facility_id" })
  

end
