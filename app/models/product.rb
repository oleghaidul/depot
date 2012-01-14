class Product < ActiveRecord::Base
	has_many :images
	accepts_nested_attributes_for :images
	validates :title, :description, :image_url, :presence => true
	validates :title, :uniqueness => true

	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	

end
