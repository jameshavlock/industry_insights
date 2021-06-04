class CreateSpotPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_prices do |t|
      t.date :date
      t.float :wti
      t.float :brent
      t.float :nyh_conv
      t.float :usgc_conv
      t.float :rbob
      t.float :no_2_heating_oil
      t.float :nyh_usld
      t.float :usgc_usld
      t.float :la_usld
      t.float :usgc_kero
      t.float :mv_propane

      t.timestamps
    end
  end
end
