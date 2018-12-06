class CreateDpstms < ActiveRecord::Migration[5.2]
  def change
    create_table :dpstms do |t|

      t.string    :kegiatan, default:"TERIMA DARI GTW" #Terima-dari-dp Kirim-ke-dp Kirim-ke-gtw
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false

      t.string    :manifest_id
      t.string    :noref

      t.integer   :droppoint_id
      t.integer   :qty_bagging_manifest
      t.integer   :kg_manifest
      t.integer   :awb_manifest
      
      t.integer   :droppoint_tujuan
      t.integer   :qty_bagging_fisik
      t.integer   :kg_fisik
      t.integer   :awb_fisik

      t.integer   :selisih_bagging
      t.integer   :selisih_kg
      t.integer   :selisih_awb 
      t.string    :fresh_paket, default: "FRESH" #Fresh-Paket Retur-Rusak Retur-Paksa Salah-Sortir 

      t.string    :diserahkan_oleh
      t.string    :diterima_oleh

      t.string    :kendaraan_id
      t.string    :transporter_team
      t.text      :description

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 0 #[0]-Terima [5]-Kirim GTW (pending-monitoring tiba di gtw)

      t.timestamps
    end
    add_index :dpstms, :tanggal
    add_index :dpstms, :kegiatan
    add_index :dpstms, :flag
  end
end
