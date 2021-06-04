# == Schema Information
#
# Table name: facilities
#
#  id            :integer          not null, primary key
#  city          :string
#  site_type     :string
#  state         :string
#  zip           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  company_id    :integer
#  padd_id       :integer
#  throughput_id :integer
#
class Facility < ApplicationRecord

  belongs_to(:throughput, { :required => false, :class_name => "Company", :foreign_key => "throughput_id" })

  belongs_to(:company, { :required => false, :class_name => "Padd", :foreign_key => "company_id" })

  has_many(:throughputs, { :class_name => "Throughput", :foreign_key => "facility_id", :dependent => :destroy })

  has_many(:contacts, { :class_name => "Contact", :foreign_key => "facility_id", :dependent => :destroy })

end
