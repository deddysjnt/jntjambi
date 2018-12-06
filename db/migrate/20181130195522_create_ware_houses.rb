class CreateWareHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :ware_houses, id: false do |t|
      t.references :product, foreign_key: true, null: false
      t.references :gudang, foreign_key: true, null:false
      t.float :qty_in, default: 0
      t.float :qty_out, default: 0
      t.decimal :open_disc, default: 0
      t.integer :harga_jual_grosir, default: 0
      t.integer :harga_jual_retail, default: 0

      t.timestamps
    end
  end
end
