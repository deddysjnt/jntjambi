class Glpulsa < ApplicationRecord
	belongs_to :perkiraan
	belongs_to :droppoint
	belongs_to :karyawan

	validates :mobile_phone, presence: true

	def nama_perkiraan
		perkiraan.try(:nama_perkiraan)
	end
	def nama_dp
		droppoint.try(:nama_dp)
	end
	def nama_karyawan
		karyawan.try(:nama_karyawan)
	end
	def nama_perkiraan=(nama_perkiraan)
		self.perkiraan = Perkiraan.where('nama_perkiraan =?',nama_perkiraan).first if nama_perkiraan.present?
	end
	def nama_dp=(nama_dp)
		self.droppoint = Droppoint.where('nama_dp =?',nama_dp).first if nama_dp.present?
	end
	def nama_karyawan=(nama_karyawan)
		self.karyawan = Karyawan.where('nama_karyawan =?',nama_karyawan).first if nama_karyawan.present?
	end
end