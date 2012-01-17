class Product < ActiveRecord::Base
	default_scope :order => 'title'
	before_destroy :ensure_not_referenced_by_any_line_item

	has_many :images, :dependent => :destroy
	has_many :line_items, :dependent => :destroy
	has_many :orders, :through => :line_items
	has_many :comments, :dependent => :destroy

	accepts_nested_attributes_for :images, :allow_destroy => true, 
								:reject_if => proc { |attrs| attrs['image'].blank? }

	validates :title, :description, :presence => true
	validates :title, :uniqueness => true
	validates :title, :length => {:minimum => 10}

	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	
	private
		def ensure_not_referenced_by_any_line_item
			errors.add(:base, 'Line Items present') unless line_items.count.zero?
		end

end
