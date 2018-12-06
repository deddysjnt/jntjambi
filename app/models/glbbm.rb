class Glbbm < ApplicationRecord
	belongs_to :perkiraan
	belongs_to :droppoint
	belongs_to :karyawan
	belongs_to :kendaraan

	validates :kendaraan_id, presence: true
	validates :perkiraan_id, presence: true
	
	#ini untuk validasi relasi
	validates_associated :droppoint
	validates_associated :perkiraan
	validates_associated :karyawan
	validates_associated :kendaraan

	def nama_perkiraan
		perkiraan.try(:nama_perkiraan)
	end
	def nopol
		kendaraan.try(:nopol)
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
	def nopol=(nopol)
		self.kendaraan = Kendaraan.where('nopol =?',nopol).first if nopol.present?
	end
	def nama_dp=(nama_dp)
		self.droppoint = Droppoint.where('nama_dp =?',nama_dp).first if nama_dp.present?
	end
	def nama_karyawan=(nama_karyawan)
		self.karyawan = Karyawan.where('nama_karyawan =?',nama_karyawan).first if nama_karyawan.present?
	end
end