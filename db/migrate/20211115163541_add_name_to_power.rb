class AddNameToPower < ActiveRecord::Migration[6.0]
  def change
    add_column :powers, :name, :string
  end
end
