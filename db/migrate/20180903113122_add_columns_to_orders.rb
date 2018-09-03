class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :name, :string
    add_column :orders, :image_url, :string
  end
end
