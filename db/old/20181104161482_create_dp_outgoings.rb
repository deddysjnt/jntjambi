class CreateDpOutgoings < ActiveRecord::Migration[5.2]
  def change
    create_table :dp_outgoings do |t|
      t.string    :nomor_transaksi
      t.string    :nomor_refrensi
      t.integer   :droppoint_id, null: false, foreign_key:true
      t.integer   :karyawan_id, null: false, foreign_key:true
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.string    :transaksi, default: "DROPOFF",null: false

      t.integer :awb_ppcash_manual
      t.integer :awb_dfod_manual
      t.integer :awb_cod_manual
      t.integer :awb_ppcash_online
      t.integer :awb_dfod_online
      t.integer :awb_cod_online
      t.integer :awb_pppm_pickup
      
      t.float :nilai_ppcash_manual
      t.float :nilai_dfod_manual
      t.float :nilai_cod_manual
      t.float :nilai_ppcash_online
      t.float :nilai_dfod_online
      t.float :nilai_cod_online
      t.float :nilai_pppm_pickup

      t.float     :biaya_biaya
      t.integer   :ackas_db_id
      
      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :dp_outgoings, :tanggal_pickup
  end
end
