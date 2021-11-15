class RenameColumnInPowers < ActiveRecord::Migration[6.0]
  def change
    rename_column :powers, :type, :power_type
  end

end
