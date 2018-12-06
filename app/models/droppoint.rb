class Droppoint < ApplicationRecord
	#relasi ke
	has_many :karyawans
	has_many :glbbms
	has_many :glpulsas
	has_many :perkiraans
	has_many :sprinter_bawas
	has_many :sprinter_kembalis
	#validasi
	validates :kasir_kas, presence: true
	validates :kasir_bank, presence: true
	validates :nama_dp, presence: true
	validates :kode_dp, presence: true , uniqueness: { case_sensitive: false }

	
	def kasir_kas_name
		if kasir_kas.present?
	    pk = Perkiraan.find_by_id(kasir_kas) 
	    pk.try(:nama_perkiraan)
	  else
	  	""
	  end
	end
	def kasir_bank_name
		if kasir_kas.present?
			pk = Perkiraan.find_by_id(kasir_bank) 
			pk.try(:nama_perkiraan)
		else
			""
		end
	end
	def jam_operasi
		"#{jam_buka} sd #{jam_tutup}"
	end
	def self.search(search)
		where('nama_dp like ?',"%#{search}%")
		.order(:nama_dp)
	end
end