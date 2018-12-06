class Kendaraan < ApplicationRecord
	has_many :biaya_harians
	has_many :biaya_bbms

	validates :nopol, presence: true

	def self.nopol(search)
		where('nopol like?',"%#{search}%")
		.order(:nopol)
	end
end