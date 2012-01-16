class RenemaCommentsColumn < ActiveRecord::Migration
  def change
  	remove_column :comments, :parent_id
    add_column :comments, :ancestry, :string
  end
end
