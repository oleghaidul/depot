class AddColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :cover_image_uid, :string
    add_column :products, :cover_image_name, :string
  end
end
