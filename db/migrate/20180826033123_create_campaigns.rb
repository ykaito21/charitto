class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :sku
      t.string :name
      t.string :image_url
      t.monetize :price
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
