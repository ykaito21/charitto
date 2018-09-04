class ChangeColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :image_url, :order_image
  end
end
