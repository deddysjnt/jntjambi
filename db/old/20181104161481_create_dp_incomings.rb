class CreateDpIncomings < ActiveRecord::Migration[5.2]
  def change
    create_table :dp_incomings do |t|
      t.string  :nomor_form
      t.integer :droppoint_id, null: false, foreign_key:true
      t.integer :sprinter_id, null: false, foreign_key:true
      t.datetime :tanggal_delivery, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.integer :transaksi, default: 1, null: false

      t.integer :awb_bawa
      t.integer :awb_berhasil
      t.integer :awb_gagal
      t.float   :persentase_delivery
      t.integer :awb_target_set
      t.integer :awb_point
      t.text    :alasan_target

      t.integer :awb_ppcash_delivery
      t.integer :awb_dfod_delivery
      t.integer :awb_cod_delivery

      t.float :nilai_dfod_delivery
      t.float :nilai_cod_delivery

      t.integer :pop_awb_ppcash
      t.integer :pop_awb_dfod
      t.integer :pop_awb_cod

      t.integer :awb_ppcash_pickup
      t.integer :awb_dfod_pickup
      t.integer :awb_cod_pickup
      t.integer :kg_real

      t.float :nilai_ppcash_pickup
      t.float :nilai_pppm_pickup
      t.float :nilai_dfod_pickup
      t.float :nilai_cod_pickup
      
      t.integer  :km_start
      t.integer  :km_stop
      t.integer  :km_claim
      t.integer  :claim_bbm_set
      t.integer  :biaya_bbm
      t.float    :biaya_lain
      t.float    :saldo_kas
      t.float    :selisih_kas
      t.integer  :ackas_db_id
      t.datetime :jam_setoran

      t.integer  :cek_adm_id
      t.datetime :tanggal_cek_admin
      t.integer  :cek_pic_id
      t.datetime :tanggal_cek_pic
      t.integer  :cek_finance_id
      t.datetime :tanggal_cek_finance
      t.text     :keterangan

      t.timestamps
    end
    add_index :dp_incomings, :droppoint_id
    add_index :dp_incomings, :sprinter_id
    add_index :dp_incomings, :tanggal_delivery
    add_index :dp_incomings, :persentase_delivery
  end
end
