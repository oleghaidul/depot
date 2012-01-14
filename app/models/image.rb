class Image < ActiveRecord::Base
	file_accessor :image
	belongs_to :product
end
