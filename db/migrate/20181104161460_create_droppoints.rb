class CreateDroppoints < ActiveRecord::Migration[5.2]
  def change
    create_table :droppoints do |t|
      t.string    :kode_dp, null: false, unique: true
      t.string    :nama_dp, null: false
      t.text      :alamat
      t.string    :pic
      t.string    :telp
      t.string    :mobile_phone
      t.string    :email
      t.string    :area, default: "KOTA"
      t.text      :rute_sprinter
      t.datetime  :tahun_buka
      t.string    :jam_buka
      t.string    :jam_tutup
      t.integer   :jarak_gateway
      t.integer   :jumlah_transit, default: 1
      t.integer   :kasir_kas, default: 1
      t.integer   :kasir_bank, default: 1
      t.text      :description

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :droppoints, :kode_dp ,unique: true
    add_index :droppoints, :nama_dp
  end
end
