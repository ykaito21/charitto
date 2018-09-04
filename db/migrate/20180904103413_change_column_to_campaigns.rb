class ChangeColumnToCampaigns < ActiveRecord::Migration[5.2]
  def change
    rename_column :campaigns, :image_url, :camp_image
  end
end
