class CreateSprinterKembalis < ActiveRecord::Migration[5.2]
  def change
    create_table :sprinter_kembalis do |t|

      t.string  :waiting_list
      t.datetime :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.string  :nomor_form
      t.integer :karyawan_id, null: false
      t.integer :droppoint_id, null: false
      t.integer :jabatan_id, null: false
      
      t.integer :awb_bawa
      t.integer :awb_sukses
      t.integer :awb_gagal

      t.integer :target_set
      t.float   :pencapaian
      t.integer :point

      t.integer :uang_masuk
      t.integer :uang_keluar
      t.integer :uang_setoran
      t.integer :uang_selisih
      t.integer :perkiraan_id

      t.integer :pickup_mitra
      t.integer :pickup_client
      t.integer :pickup_user

      t.integer :awb_cod_sukses
      t.integer :awb_dfod_sukses
      t.integer :awb_ppcash_sukses
      t.integer :pop_awb_ppcash_kembali
      t.integer :pop_awb_dfod_kembali
      t.integer :pop_awb_cod_kembali
      t.integer   :km_start
      t.integer   :km_stop
      t.integer   :jarak_km
      t.integer   :harga_km
      t.integer   :biaya_bbm
      t.integer   :biaya_lain
      t.string    :jenis_biaya_lain #[TAMBAL BAN, GANTI BAN DALAM, SERVICE REM DARURAT, GANTI BUSI DARURAT]

      t.text      :description

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :sprinter_kembalis, :waiting_list
    add_index :sprinter_kembalis, :karyawan_id
    add_index :sprinter_kembalis, :droppoint_id
    add_index :sprinter_kembalis, :jabatan_id
    add_index :sprinter_kembalis, :perkiraan_id    
    add_index :sprinter_kembalis, :tanggal
    add_index :sprinter_kembalis, :flag
  end
end
