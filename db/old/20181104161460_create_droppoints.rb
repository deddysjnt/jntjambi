class CreateDroppoints < ActiveRecord::Migration[5.2]
  def change
    create_table :droppoints do |t|
      t.string :kode_dp, null: false, unique: true
      t.string :nama_dp, null: false
      t.text :alamat
      t.string :pic
      t.string :telp
      t.string :mobile_phone
      t.string :email
      t.string :area, default: "KOTA"
      t.text :rute_sprinter
      t.datetime :tahun_buka
      t.string :jam_operasi
      t.integer :jarak_gateway
      t.integer :jumlah_transit, default: 1

      t.timestamps
    end
    add_index :droppoints, :kode_dp ,unique: true
    add_index :droppoints, :nama_dp
  end
end
