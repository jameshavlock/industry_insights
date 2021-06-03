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
end
