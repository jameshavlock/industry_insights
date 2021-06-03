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
end
