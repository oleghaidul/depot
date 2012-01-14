class Image < ActiveRecord::Base
	file_accessor :image
	belongs_to :product
	validates :image, :presence => true
end
