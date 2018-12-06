class CreateKaryawans < ActiveRecord::Migration[5.2]
  def change
    create_table :karyawans do |t|
      t.string :nama_karyawan, null: false
      t.string :nik, null: false, unique: true

      t.string :ktp, null: false
      t.datetime :tanggal_lahir
      t.string :jenis_kelamin
      t.string :agama
      t.string :pendidikan
      t.string :keterampilan_khusus
      t.string :kota
      t.string :kecamatan
      t.text   :alamat
      t.string :pos
      t.string :mobile_phone
      t.string :email

      t.string :lokasi_berkas
      t.string :refrensi
      t.integer :droppoint_id

      t.integer :kasir_piutang
      t.integer :kasir_kas
      t.integer :kasir_bank
      
      t.string  :status #[TK0, KT1 KT2 KT3]
      t.string  :bpjs_tk
      t.string  :bpjs_ks
      
      t.string  :bank
      t.string  :norek
      t.string  :url_foto

      t.integer :jabatan_id, null: false, foreign_key: true
      t.integer :jabatanpusat_id, null: false, foreign_key: true
      
      t.datetime :tanggal_masuk, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.datetime :tanggal_mutasi
      t.datetime :tanggal_resign
      t.datetime :tanggal_gajian

      t.integer  :flag, default: 5, null: false

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.timestamps
    end
    add_index :karyawans, :nama_karyawan
    add_index :karyawans, :tanggal_masuk
    add_index :karyawans, :jabatan_id
    add_index :karyawans, :jabatanpusat_id
  end
end
