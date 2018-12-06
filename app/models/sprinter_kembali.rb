class SprinterKembali < ApplicationRecord
	#relasi ke
	belongs_to :jabatan
	belongs_to :droppoint
	belongs_to :karyawan
	belongs_to :perkiraan
	has_many :sprinter_bawas, through: :appointments

	#validasi
	validates :nama_karyawan, presence: true
	#ini untuk validasi relasi
	validates_associated :karyawan
	validates_associated :jabatan
	validates_associated :droppoint
	validates_associated :perkiraan

	def self.bawa_hari_ini(search)
		where('nama_karyawan like?', "%#{search}%")
		.order(:nama_karyawan)
	end

	def nama_jabatan
		jabatan.try(:nama_jabatan)
	end
	def nama_karyawan
		karyawan.try(:nama_karyawan)
	end
	def nama_dp
		droppoint.try(:nama_dp)
	end
	def nama_perkiraan
		perkiraan.try(:nama_perkiraan)
	end

	def self.point
		if self.awb_sukses_greather_then_self.target_set
			self.point = self.target_set - self.awb_sukses
		else
			self.point = 0
		end
	end

	def nama_jabatan=(nama_jabatan)
		self.jabatan = Jabatan.where('nama_jabatan =?',nama_jabatan).first if nama_jabatan.present?
	end
	def nama_karyawan=(nama_karyawan)
		self.karyawan = Karyawan.where('nama_karyawan =?',nama_karyawan).first if nama_karyawan.present?
	end
	def nama_dp=(nama_dp)
		self.droppoint = Droppoint.where('nama_dp =?',nama_dp).first if nama_dp.present?
	end
	def nama_dp=(nama_perkiraan)
		self.perkiraan = Perkiraan.where('nama_perkiraan =?',nama_perkiraan).first if nama_perkiraan.present?
	end
end