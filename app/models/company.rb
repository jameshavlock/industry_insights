# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  name        :string
#  state       :string
#  users_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Company < ApplicationRecord

  has_many(:users, { :class_name => "User", :foreign_key => "company_id", :dependent => :destroy })

  has_many(:employees, { :class_name => "Contact", :foreign_key => "company_id", :dependent => :destroy })

  has_many(:facilities, { :class_name => "Facility", :foreign_key => "throughput_id", :dependent => :destroy })
  

end
