class CreateUnpacks < ActiveRecord::Migration[5.2]
  def change
    create_table :unpacks do |t|
      t.integer :droppoint_id
      t.string :sumber
      t.datetime :tanggal
      t.string :manifest_id
      t.string :nomor_smu
      t.integer :droppoint_asal
      t.integer :agent_asal
      t.string :nomor_bagging
      t.integer :kg_fisik
      t.integer :awb_fisik
      t.integer :kg_e3
      t.integer :awb_e3
      t.boolean :fresh_paket
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
