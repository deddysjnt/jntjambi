class CreateSprinterGagals < ActiveRecord::Migration[5.2]
  def change
    create_table :sprinter_gagals do |t|
      t.integer   :sprinter_kembali_id
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.integer   :droppoint_id
      t.integer   :karyawan_id
      t.string    :awb, null: false
      t.string    :masalah
      t.string    :paket, default: "COD" #[PPCASH, COD, DFOD]
      t.text      :description

      t.integer   :user_id
      t.integer   :user_edit
      t.integer   :user_approve
      t.integer   :tanggal_approve
      t.string    :ip_address

      t.integer   :flag, default: 5 #[Pending Monitor Posting] 


      t.timestamps
    end
    add_index :sprinter_gagals, :karyawan_id
    add_index :sprinter_gagals, :droppoint_id
    add_index :sprinter_gagals, :tanggal
    add_index :sprinter_gagals, :awb
  end
end
