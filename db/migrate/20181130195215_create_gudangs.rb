class CreateGudangs < ActiveRecord::Migration[5.2]
  def change
    create_table :gudangs do |t|
      t.references :droppoint
      t.string :nama_gudang
      t.string :area_layanan
      t.string :kota
      t.string :kecamatan
      t.text :alamat
      t.string :no_telp
      t.string :mobile_phone
      t.string :contac
      t.string :email

      t.timestamps
    end
  end
end
