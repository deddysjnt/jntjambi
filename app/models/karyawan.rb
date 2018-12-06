class Karyawan < ApplicationRecord
	#relasi ke
	belongs_to 	:jabatanpusat
	belongs_to 	:jabatan
	belongs_to 	:droppoint
	has_many   	:glpusas
	has_many   	:glbbms
	has_many   	:sprinter_bawas
	has_many	  :sprinter_kembalis

	#validasi
	validates :nama_karyawan, presence: true
	#ini untuk validasi relasi
	validates_associated :jabatanpusat
	validates_associated :jabatan
	validates_associated :droppoint

	def self.search(search)
		where('nama_karyawan like?', "%#{search}%")
		.order(:nama_karyawan)
	end
	def nama_jabatan
		jabatan.try(:nama_jabatan)
	end
	def nama_jabatan_pusat
		jabatanpusat.try(:nama_jabatan_pusat)
	end
	def nama_dp
		droppoint.try(:nama_dp)
	end
	def kode_dp
		droppoint.try(:kode_dp)
	end
	def kasir_kas_name
		if kasir_kas.present?
			pk = Perkiraan.find_by_id(kasir_kas)
			pk.try(:nama_perkiraan)
		else
			""
		end
	end
	def resign?
		self.tanggal_resign.present?
	end
	def active?
		if resign?
			false
		else
			true
		end
	end
end