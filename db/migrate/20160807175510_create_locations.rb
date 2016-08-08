class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string  :country
      t.string  :city
      t.references :user
      t.timestamps
    end
  end
end
