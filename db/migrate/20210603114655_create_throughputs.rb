class CreateThroughputs < ActiveRecord::Migration[6.0]
  def change
    create_table :throughputs do |t|
      t.integer :facility_id
      t.string :product
      t.integer :year
      t.string :supply_details
      t.integer :quantity

      t.timestamps
    end
  end
end
