class Product < ActiveRecord::Base
	default_scope :order => 'title'
	before_destroy :ensure_not_referenced_by_any_line_item

	has_many :images
	has_many :line_items
	accepts_nested_attributes_for :images
	validates :title, :description, :presence => true
	validates :title, :uniqueness => true
	validates :title, :length => {:minimum => 10}

	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	
	private
		def ensure_not_referenced_by_any_line_item
			if line_items.count.zero?
				return true
			else
				errors.add(:base, 'Line Items present')
				return false
			end
		end

end
