class CreateBldts < ActiveRecord::Migration[5.2]
  def change
    create_table :bldts do |t|

      t.string    :blhd_id

      t.integer   :product_id
      t.float     :qty
      t.float     :harga
      t.float     :discp_dt
      t.float     :discn_dt
      t.float     :discp_hd
      t.float     :discn_hd
      t.float     :ongkirp_hd
      t.float     :ongkirn_hd
      t.float     :biaya
      t.float     :lain
      t.float     :harga_net
      t.string    :satuan

      t.integer   :droppoint_id
      t.string    :keterangan
      t.integer   :flag, default: 0 

      t.timestamps
    end
    add_index :bldts, :product_id
    add_index :bldts, :droppoint_id
  end
end
