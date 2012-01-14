class Product < ActiveRecord::Base
	default_scope :order => 'title'

	has_many :images
	accepts_nested_attributes_for :images
	validates :title, :description, :presence => true
	validates :title, :uniqueness => true
	validates :title, :length => {:minimum => 10}

	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	

end
