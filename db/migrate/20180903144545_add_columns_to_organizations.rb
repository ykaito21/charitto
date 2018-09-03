class AddColumnsToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :description, :text
    add_column :organizations, :org_image, :string
  end
end
