# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  email       :string
#  notes       :string
#  phone       :string
#  role        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#  facility_id :integer
#
class Contact < ApplicationRecord

belongs_to(:company, { :required => false, :class_name => "Company", :foreign_key => "company_id" })

belongs_to(:facility, { :required => false, :class_name => "Facility", :foreign_key => "facility_id" })



end
