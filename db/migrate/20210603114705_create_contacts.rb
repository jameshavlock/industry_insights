class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :company_id
      t.string :email
      t.string :phone
      t.integer :facility_id
      t.string :role
      t.string :notes

      t.timestamps
    end
  end
end
