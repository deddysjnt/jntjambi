class CreateJabatans < ActiveRecord::Migration[5.2]
  def change
    create_table :jabatans do |t|
      t.string :nama_jabatan, null: false, unique: true
      t.string :divisi_kerja, default: "OPERASIONAL LAPANGAN"
      t.integer :gapok_training, default: 0, null: false
      t.integer :gapok_tetap, default: 0, null: false
      t.integer :tunjangan_jabatan, default: 0, null: false
      t.integer :tunjangan_masa_kerja, default: 0, null: false

      t.string :nama_jabatan_pusat, null: false
      t.string :divisi_kerja_pusat, default: "OPERASIONAL LAPANGAN"
      t.integer :gapok_training_pusat, default: 0, null: false
      t.integer :gapok_tetap_pusat, default: 0, null: false
      t.integer :tunjangan_jabatan_pusat, default: 0, null: false
      t.integer :tunjangan_masa_kerja_pusat, default: 0, null: false

      t.integer :claim_bbm_set, default:420, null: false

      t.integer :claim_pulsa_limit_1bulan, default: 0, null: false
      t.integer :claim_service_limit_3bulan, default: 0, null: false
      t.integer :claim_service_limit_6bulan, default: 0, null: false
      t.integer :claim_service_limit_12bulan, default: 0, null: false

      t.timestamps
    end
    add_index :jabatans, :nama_jabatan ,unique: true
    add_index :jabatans, :divisi_kerja
    add_index :jabatans, :nama_jabatan_pusat
    add_index :jabatans, :divisi_kerja_pusat
  end
end
