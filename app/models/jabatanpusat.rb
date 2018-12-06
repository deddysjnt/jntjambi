class Jabatanpusat < ApplicationRecord
	#Relasi antar tabel
	has_many :karyawans
	has_many :jabatans


	#validasi data saat create dan update
	validates :nama_jabatan_pusat, presence:true

	def self.search(search)
		where('nama_jabatan_pusat like ?', "%#{search}%")
		.order(:nama_jabatan_pusat)
	end
end