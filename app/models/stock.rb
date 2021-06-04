# == Schema Information
#
# Table name: stocks
#
#  id             :integer          not null, primary key
#  all_products   :integer
#  crude          :integer
#  date           :date
#  diesel         :integer
#  kero           :integer
#  resid          :integer
#  total_gasoline :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Stock < ApplicationRecord
end
