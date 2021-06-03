class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :state
      t.integer :users_count

      t.timestamps
    end
  end
end
