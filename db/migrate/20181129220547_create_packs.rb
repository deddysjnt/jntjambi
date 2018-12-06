class CreatePacks < ActiveRecord::Migration[5.2]
  def change
    create_table :packs do |t|
      t.integer :droppoint_id
      t.datetime :tanggal
      t.string :manifest_id
      t.string :tujuan
      t.integer :agent_tujuan
      t.integer :droppoint_tujuan
      t.string :nomor_bagging
      t.integer :kg_fisik
      t.integer :awb_fisik
      t.text :team_kerja
      t.integer :team_shift
      t.text :description
      t.datetime :tanggal_approve
      t.integer :user_approve
      t.integer :user_add
      t.integer :user_edit
      t.string :ip_address
      t.integer :flag, default:5

      t.timestamps
    end
  end
end
