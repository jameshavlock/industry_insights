class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.integer :throughput_id
      t.integer :company_id
      t.integer :padd_id
      t.string :state
      t.string :city
      t.string :zip
      t.string :site_type

      t.timestamps
    end
  end
end
