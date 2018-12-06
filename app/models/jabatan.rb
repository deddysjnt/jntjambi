class Jabatan < ApplicationRecord
	#Relasi antar tabel
	has_many :karyawans
	belongs_to :jabatanpusat
	has_many :sprinter_bawas
	has_many :sprinter_kembalis


	#validasi data saat create dan update
	validates :nama_jabatan, uniqueness: { case_sensitive: false } ,presence: true
	

	def self.search(search)
		where('nama_jabatan like ?', "%#{search}%")
		.order(:nama_jabatan)
	end

	def nama_jabatan_pusat
		jabatanpusat.try(:nama_jabatan_pusat)
	end
	#printah ini untuk mengecek nilai nama di tabel category, jika tidak ada tambahkan
	def nama_jabatan_pusat=(nama_jabatan_pusat)
		self.jabatanpusat = Jabatanpusat.find_or_create_by(nama_jabatan_pusat: nama_jabatan_pusat) if nama_jabatan_pusat.present?
	end
end