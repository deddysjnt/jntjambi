class CreateDpoutgoings < ActiveRecord::Migration[5.2]
  def change
    create_table :dpoutgoings do |t|
      t.string    :nomor
      t.integer   :karyawan_id
      t.integer   :droppoint_id #auto dari karyawan (boleh edit)
      
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.string    :transaksi, default: "DROP OFF" #[DROP OFF, PICKUP]

      t.integer   :awb_total
      t.integer   :uang_masuk
      t.integer   :perkiraan_id #auto dari karyawan

      t.integer   :awb_ppcash_manual
      t.integer   :awb_dfod_manual
      t.integer   :awb_cod_manual
      t.integer   :awb_pppm_manual
      t.integer   :awb_ppcash_online
      t.integer   :awb_dfod_online
      t.integer   :awb_cod_online
      t.integer   :awb_pppm_online

      t.float     :nilai_ppcash_manual
      t.float     :nilai_dfod_manual
      t.float     :nilai_cod_manual
      t.float     :nilai_pppm_manual
      t.float     :nilai_ppcash_online
      t.float     :nilai_dfod_online
      t.float     :nilai_cod_online
      t.float     :nilai_pppm_online

      t.text      :description

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :dpoutgoings, :tanggal
    add_index :dpoutgoings, :karyawan_id
    add_index :dpoutgoings, :perkiraan_id
    add_index :dpoutgoings, :transaksi
  end
end
