class CreateSpecialSets < ActiveRecord::Migration[5.2]
  def change
    create_table :special_sets do |t|
      t.integer :karyawan_id, null: false, foreign_key:true
      t.integer :claim_bbm_set, default: 0
      t.integer :claim_pulsa_set, default: 0
      t.integer :gapok_training_set, default: 0, null: false
      t.integer :gapok_tetap_set, default: 0, null: false
      t.integer :tunjangan_jabatan_set, default: 0, null: false
      t.integer :tunjangan_masa_kerja_set, default: 0, null: false
      t.text :keterangan

      t.timestamps
    end
    add_index :special_sets, :karyawan_id ,unique: true
  end
end
