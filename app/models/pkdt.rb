class Pkdt < ApplicationRecord
	belongs_to :pkhd, optional: true
	belongs_to :product

	def product_name
		product.try(:product_name)
	end
end
