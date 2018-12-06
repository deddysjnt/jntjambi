class Category < ApplicationRecord
	has_many :products

	validates :category_name, presence: true

	#fungsi ini untuk melakukan pencarian atau filter data berdasarikan nama
	def self.category_name(search)
		where('category_name like?', "%#{search}%")
		.order(:category_name)
	end
end 
