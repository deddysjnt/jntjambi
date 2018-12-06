class SprinterBawa < ApplicationRecord
	#relasi ke
	belongs_to :jabatan
	belongs_to :droppoint
	belongs_to :karyawan

	#validasi
	validates :nama_karyawan, presence: true
	#ini untuk validasi relasi
	validates_associated :karyawan
	validates_associated :jabatan
	validates_associated :droppoint

	def self.paket_sprinter_pertanggal(search_id,search_date)
		where('karyawan_id = ? and tanggal like?',"#{search_id}","%#{search_date}%")
		.group_by(:karyawan_id)
	end
	def self.paket_pertanggal(search_date)
		where('tanggal like?',"%#{search_date}%")
		.group_by(:karyawan_id)
		.order_by(:droppoint_id, :nama_karyawan)
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
	def awb_ppcash
		awb_bawa - awb_cod - awb_dfod
	end
end