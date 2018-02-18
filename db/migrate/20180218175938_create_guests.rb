class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.text :name
      t.integer :accompanying, default: 1
    end
  end
end
