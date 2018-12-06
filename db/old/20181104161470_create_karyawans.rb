class CreateKaryawans < ActiveRecord::Migration[5.2]
  def change
    create_table :karyawans do |t|
      t.string :nama_karyawan, null: false
      t.string :nik, null: false, unique: true
      t.string :nip, null: false
      t.string :jenis_kelamin
      t.string :agama
      t.string :pendidikan
      t.string :keterampilan_khusus
      t.text :alamat
      t.string :mobile_phone
      t.string :email
      t.string :lokasi_berkas
      t.string :refrensi
      t.integer :droppoint_id, null: false, foreign_key: true
      t.integer :perkiraan_piutang
      t.integer :perkiraan_kas
      t.integer :perkiraan_bank
      t.string  :nomor_bpjst
      t.string  :nomor_bpjsk
      t.string  :bank
      t.string  :nomor_rekening
      t.text :foto

      t.integer :jabatan_id, null: false, foreign_key: true
      t.integer :jabatan_pusat, null: false
      t.integer :status, default: 1, null: false

      t.datetime :tanggal_masuk, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.datetime :tanggal_mutasi
      t.datetime :tanggal_resign

      t.timestamps
    end
    add_index :karyawans, :nama_karyawan
    add_index :karyawans, :tanggal_masuk
    add_index :karyawans, :jabatan_pusat
  end
end
