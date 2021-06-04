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





end
