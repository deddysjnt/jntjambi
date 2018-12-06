class CreateForums < ActiveRecord::Migration[5.2]
  def change
    create_table :forums do |t|
      t.string    :awb
      t.string    :masalah
      t.string    :komplen, default: "NORMAL" #[NORMAL INTERNAL, HARD COMPLAIN INTERNAL, NORMAL NASIONAL, HARD COMPLAIN NASIONAL]

      t.integer   :droppoint_register
      t.integer   :karywan_register

      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.datetime  :tanggal_awb
      t.datetime  :tanggal_incoming

      t.text      :historis_action
      t.text      :harapan_bantuan
      t.integer   :special_tag
      t.integer   :group_tag

      t.integer   :sticky_order, default: 100

      t.datetime  :tanggal_finish
      t.string    :putusan_akhir

      t.integer   :user_id
      t.integer   :user_edit
      t.integer   :user_approve
      t.integer   :tanggal_approve
      t.string    :ip_address

      t.integer   :flag, default: 5 #"hard complain"

      t.timestamps
    end
    add_index :forums, :awb
    add_index :forums, :tanggal
    add_index :forums, :masalah
    add_index :forums, :komplen
  end
end
