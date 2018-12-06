class CreateGatewayKirims < ActiveRecord::Migration[5.2]
  def change
    create_table :gateway_kirims do |t|

      t.datetime  :tanggal_kirim, default: -> {'CURRENT_TIMESTAMP'}, null: false

      t.string    :nomor_smu
      t.string    :nomor_manifest
      t.integer   :biaya_pengiriman
      t.integer   :kg_real
      t.integer   :jumlah_bagging
      t.string    :maskapai
      t.text      :team_transporter

      t.integer   :kirim_ke_agent
      t.integer   :kirim_ke_droppoint_id

      t.integer   :karyawan_pengiriman_id


      t.integer   :ackas_cr_id
      
      t.integer   :cek_adm_id
      t.datetime  :tanggal_cek_admin
      t.integer   :cek_pic_id
      t.datetime  :tanggal_cek_pic
      t.integer   :cek_finance_id
      t.datetime  :tanggal_cek_finance

      t.timestamps
    end
    add_index :gateway_kirims, :tanggal_kirim
  end
end
