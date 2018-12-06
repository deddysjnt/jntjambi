class CreatePkdts < ActiveRecord::Migration[5.2]
  def change
    create_table :pkdts do |t|

      t.string    :pkhd_id

      t.integer   :product_id
      t.float     :qty
      t.float     :harga
      t.float     :harga_net
      t.string    :satuan

      t.integer   :droppoint_id
      t.string    :keterangan
      t.integer   :flag, default: 0 

      t.timestamps
    end
    add_index :pkdts, :product_id
    add_index :pkdts, :droppoint_id
  end
end
