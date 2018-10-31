class CreateBeds < ActiveRecord::Migration[5.2]
  def change
    create_table :beds do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :size

      t.timestamps
    end
  end
end
