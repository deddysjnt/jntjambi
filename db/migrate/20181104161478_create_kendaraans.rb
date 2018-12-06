class CreateKendaraans < ActiveRecord::Migration[5.2]
  def change
    create_table :kendaraans do |t|
      t.string :nopol, null: false, unique:true
      t.string :kode_aset, default: "GME-MOB/001"
      t.string :lokasi_layanan, null: false, default: "KOTA"
      t.string :parkir, null: false, default: "PALMERAH"
      t.string :pemilik, null: false, default:"PT"
      t.string :sopir_tetap
      t.text :spec_mobil
      t.text :rute
      t.integer :tahun, default: 0

      t.integer :ban_set, default: 0
      t.datetime :tanggal_register
      t.datetime :tanggal_stnk
      t.datetime :tanggal_kir
      t.datetime :tanggal_pajak
      t.integer :reminder_surat, default: 7

      t.integer :km_awal, default: 0
      t.integer :km_next_service, default: 0
      t.integer :reminder_service, default: 100
      
      t.integer  :flag, default: 5, null: false

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.timestamps
    end
    add_index :kendaraans, :nopol ,unique: true
    add_index :kendaraans, :pemilik
  end
end