class CreateDpbaggings < ActiveRecord::Migration[5.2]
  def change
    #UNTUK REGISTER BAGGING SEAL TIAP DP
    create_table :dpbaggings do |t|

      t.string    :kegiatan, default:"PACK" # [PACK,UNPACK]
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false

      t.string    :bagging_id
      t.string    :noref

      t.integer   :droppoint_asal
      t.integer   :kg_asal
      t.integer   :awb_asal
      t.datetime  :tanggal_kirim
      
      t.string    :manifest_id
      t.datetime  :tanggal_terima
      t.integer   :droppoint_terima      
      t.integer   :kg_terima
      t.integer   :awb_terima

      t.integer   :selisih_kg
      t.integer   :selisih_awb 
      t.string    :fresh_paket, default: "FRESH" #Fresh-Paket Retur-Rusak Retur-Paksa Salah-Sortir 

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5 #[5]-Bagging only (pending-monitoring kirim/terima)

      t.timestamps
    end
    add_index :dpbaggings, :tanggal
    add_index :dpbaggings, :droppoint_asal
    add_index :dpbaggings, :tanggal_terima
    add_index :dpbaggings, :droppoint_terima
  end
end
