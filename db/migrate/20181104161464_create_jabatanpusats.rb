class CreateJabatanpusats < ActiveRecord::Migration[5.2]
  def change
    create_table :jabatanpusats do |t|
      t.string :nama_jabatan_pusat, null: false
      t.string :divisi_kerja_pusat, default: "OPERASIONAL LAPANGAN"
      t.integer :gapok_training_pusat, default: 0, null: false
      t.integer :gapok_tetap_pusat, default: 0, null: false
      t.integer :tunjangan_jabatan_pusat, default: 0, null: false
      t.integer :tunjangan_masa_kerja_pusat, default: 0, null: false

      t.text      :description

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :jabatanpusats, :nama_jabatan_pusat ,unique: true
    add_index :jabatanpusats, :divisi_kerja_pusat
  end
end
