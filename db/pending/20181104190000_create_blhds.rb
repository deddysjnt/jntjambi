class CreateBlhds < ActiveRecord::Migration[5.2]
  def change
    create_table :blhds do |t|

      t.string    :nomor
      t.string    :noref
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.integer   :terms, default: 0
      t.datetime  :tanggal_jtp, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.integer   :vendor_id

      t.float     :total_qty
      t.float     :total_harga
      t.float     :discp
      t.float     :discn
      t.float     :taxp
      t.float     :taxn
      t.float     :ongkirn
      t.float     :ongkirp
      t.integer   :vendor_ongkir
      t.string    :resi_pengiriman
      t.string    :nomor_tagihan #setting auto dari tabel special setting

      t.float     :grand_total

      t.text      :description

      t.integer   :user_add
      t.integer   :user_edit
      t.integer   :user_approve
      t.integer   :tanggal_approve
      t.string    :ip_address

      t.integer   :flag, default: 5 #[Pending Monitor Posting] 

      t.timestamps
    end
    add_index :blhds, :tanggal
    add_index :blhds, :nomor
    add_index :blhds, :vendor_id
  end
end
