class CreateGtwStmps < ActiveRecord::Migration[5.2]
  def change
    create_table :gtw_stmps do |t|
      t.string :kegiatan
      t.datetime :tanggal
      t.string :manifest_id
      t.string :noref

      t.integer :droppoint_id
      t.integer :qty_bagging_fisik
      t.integer :kg_fisik
      t.integer :awb_fisik

      t.integer :droppoint_tujuan
      t.integer :qty_bagging_manifest
      t.integer :kg_manisfet
      t.integer :awb_manifest

      t.integer :selisih_bagging
      t.integer :selisih_kg
      t.integer :selisih_awb
      t.string :fresh_paket
      t.integer :agent_id
           
      t.string :diterima_dari
      t.integer :diserahkan_oleh

      t.text :gtw_team_kerja
      t.integer :gtw_team_shift

      t.integer :kendaraan_id
      t.text :transporter_team

      t.text :description
      t.datetime :tanggal_approve
      t.integer :user_approve
      t.integer :user_add
      t.integer :user_edit
      t.string :ip_address
      t.integer :flag, default: 5

      t.timestamps
    end
    add_index :gtw_stmps, :tanggal
    add_index :gtw_stmps, :kegiatan
    add_index :gtw_stmps, :gtw_team_shift
    add_index :gtw_stmps, :flag    
  end
end
