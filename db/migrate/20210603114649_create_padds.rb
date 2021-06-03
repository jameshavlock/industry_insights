class CreatePadds < ActiveRecord::Migration[6.0]
  def change
    create_table :padds do |t|

      t.timestamps
    end
  end
end
