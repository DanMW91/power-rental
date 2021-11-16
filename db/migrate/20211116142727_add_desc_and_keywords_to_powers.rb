class AddDescAndKeywordsToPowers < ActiveRecord::Migration[6.0]
  def change
    add_column :powers, :description, :string
    add_column :powers, :keywords, :text, array: true, default: []
  end
end
