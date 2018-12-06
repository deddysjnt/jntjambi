class Perkiraan < ApplicationRecord
	has_many :gldts
	has_many :glbbms
	has_many :glpulsas
	has_many :droppoints
	has_many :sprinter_kembalis

	validates :acno, presence: true
	validates :nama_perkiraan, presence: true

	def self.all_detail_account
		where('ac_detail ?', true)
		.order(:nama_perkiraan)
	end
	def self.all_header_account
		where('ac_detail ?', false)
		.order(:nama_perkiraan)
	end
	def self.search(search)
		where('ac_detail = ? and nama_perkiraan like ?',true,"%#{search}%")
		.order(:nama_perkiraan) if search.present?
	end
end