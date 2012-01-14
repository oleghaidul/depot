class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :image_name
      t.string :image_uid

      t.timestamps
    end
  end
end
