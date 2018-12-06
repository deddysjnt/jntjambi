class Gldt < ApplicationRecord
	belongs_to :glhd, optional: true
	belongs_to :perkiraan

	validates :perkiraan_id, presence: true
	validates :description, presence: true
	validates :debet, numericality: true
	validates :credit, numericality: true

	def nama_perkiraan
		perkiraan.try(:nama_perkiraan)
	end
	def acno
		perkiraan.try(:acno)
	end	
end