class CreatePowers < ActiveRecord::Migration[6.0]
  def change
    create_table :powers do |t|
      t.string :element
      t.string :type
      t.integer :price
      t.string :location
      t.string :example_hero
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
