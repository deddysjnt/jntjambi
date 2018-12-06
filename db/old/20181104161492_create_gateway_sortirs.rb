class CreateGatewaySortirs < ActiveRecord::Migration[5.2]
  def change
    create_table :gateway_sortirs do |t|
      t.string    :transaksi, default:"PACK-SORTIR INCOMING"
      t.datetime  :tanggal_sortir, default: -> {'CURRENT_TIMESTAMP'}, null: false

      t.integer   :nomor_bagging
      t.integer   :kg_real
      t.integer   :jumlah_awb

      t.integer   :target_ke_agent_id
      t.integer   :target_ke_droppoint_id

      t.integer   :karyawan_bagging_id
      t.text      :team_sortir

      t.integer   :ackas_cr_id
      
      t.integer   :cek_adm_id
      t.datetime  :tanggal_cek_admin
      t.integer   :cek_pic_id
      t.datetime  :tanggal_cek_pic
      t.integer   :cek_finance_id
      t.datetime  :tanggal_cek_finance

      t.timestamps
    end
    add_index :gateway_sortirs, :tanggal_sortir
  end
end
