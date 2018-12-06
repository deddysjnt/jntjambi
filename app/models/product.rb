class Product < ApplicationRecord
	belongs_to :category
  has_many :pkdts

	validates :product_name, presence: true
	validates :tipe, presence: true
	
	#ini untuk validasi relasi
	validates_associated :category


  #ini untuk meload product category ke form
  def category_name
    category.try(:category_name)
  end
  
  #printah ini untuk mengecek nilai nama di tabel category, jika tidak ada tambahkan
  def category_name=(category_name)
    self.category = Category.find_or_create_by(category_name: category_name) if category_name.present?
  end

  #ini untuk melakukan search dan filter
  def self.search(search)
  	where('product_name like?', "%#{search}%")
  end

  def self.boleh_jual?
  	self.stok > 0
  end
end