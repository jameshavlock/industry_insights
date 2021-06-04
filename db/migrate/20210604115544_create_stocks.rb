class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.integer :all_products
      t.integer :crude
      t.integer :total_gasoline
      t.integer :kero
      t.integer :diesel
      t.integer :resid
      t.date :date

      t.timestamps
    end
  end
end
