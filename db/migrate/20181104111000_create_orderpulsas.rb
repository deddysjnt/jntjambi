class CreateOrderpulsas < ActiveRecord::Migration[5.2]
  def change
    create_table :orderpulsas do |t|

      t.string    :name
      t.string    :nomor
      t.string    :noref
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.float     :total_debet
      t.float     :total_credit

      t.text      :description

      t.integer   :user_add
      t.integer   :user_edit
      t.integer   :user_approve
      t.integer   :tanggal_approve
      t.string    :ip_address

      t.integer   :flag, default: 5 #[Pending Monitor Posting] 

      t.timestamps
    end
    add_index :orderpulsas, :tanggal
    add_index :orderpulsas, :nomor
  end
end
