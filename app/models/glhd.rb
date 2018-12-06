class Glhd < ApplicationRecord
	has_many :gldts, :dependent => :destroy

	accepts_nested_attributes_for :gldts, 
	reject_if: lambda{ |attributes|attributes['perkiraan_id'].blank? },
	allow_destroy: true
	before_save :calculate_total

	validates :nomor, presence: true

	def total_d
		self.gldts.sum(:debet)
	end
	def total_c
		self.gldts.sum(:credit)
	end

	def calculate_total
		total_debet = self.gldts.sum(:debet)
		total_credit = self.gldts.sum(:credit)
	end
end