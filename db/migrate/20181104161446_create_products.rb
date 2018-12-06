class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :category_id, null: false, foreign_key: true
      t.string  :product_name, null: false
      t.string  :barcode
      t.string  :satuan
      t.float   :hitungan_dasar, default: 1, null: false
      t.integer :sticky_order, default: 500, null: false
      t.integer :tipe, default: 2, null: false
      t.boolean :produksi_mode, default: 0, null: false
      t.text    :description
      t.string  :url_picture
      t.float   :qty_in, default: 0
      t.float   :qty_out, default: 0
      t.float   :stok, default: 0
      t.float   :harga_in, default: 0
      t.float   :harga_rata, default: 0
      t.float   :harga_jual, default: 0
      
      t.datetime  :tanggal_approve
      t.integer   :user_approve      
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5
      
      t.timestamps
    end
    add_index :products, :product_name
    add_index :products, :barcode
    add_index :products, [:tipe, :product_name]
    add_index :products, :stok
  end
end
