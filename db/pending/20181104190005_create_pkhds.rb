class CreatePkhds < ActiveRecord::Migration[5.2]
  def change
    create_table :pkhds do |t|

      t.string    :nomor
      t.string    :noref
      t.datetime  :tanggal
      t.integer   :droppoint_id

      t.float     :total_qty
      t.float     :grand_total

      t.string    :keterangan

      t.integer   :user_add
      t.integer   :user_edit
      t.integer   :user_approve
      t.integer   :tanggal_approve
      t.string    :ip_address
      
      t.integer   :flag, default: 0 

      t.timestamps
    end
    add_index :pkhds, :tanggal
    add_index :pkhds, :droppoint_id
  end
end
