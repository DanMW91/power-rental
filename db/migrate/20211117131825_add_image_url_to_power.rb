class AddImageUrlToPower < ActiveRecord::Migration[6.0]
  def change
    add_column :powers, :image_url, :string
  end
end
