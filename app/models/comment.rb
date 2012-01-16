class Comment < ActiveRecord::Base
	belongs_to :product
  has_ancestry
end
