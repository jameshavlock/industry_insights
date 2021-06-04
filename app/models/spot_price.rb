# == Schema Information
#
# Table name: spot_prices
#
#  id               :integer          not null, primary key
#  brent            :float
#  date             :date
#  la_usld          :float
#  mv_propane       :float
#  no_2_heating_oil :float
#  nyh_conv         :float
#  nyh_usld         :float
#  rbob             :float
#  usgc_conv        :float
#  usgc_kero        :float
#  usgc_usld        :float
#  wti              :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class SpotPrice < ApplicationRecord
end
