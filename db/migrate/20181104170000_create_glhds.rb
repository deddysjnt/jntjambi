class CreateGlhds < ActiveRecord::Migration[5.2]
  def change
    create_table :glhds do |t|
      t.integer   :droppoint_id, default: 0
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
    add_index :glhds, :tanggal
    add_index :glhds, :nomor
    add_index :glhds, :droppoint_id
  end
end
