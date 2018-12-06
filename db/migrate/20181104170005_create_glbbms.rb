class CreateGlbbms < ActiveRecord::Migration[5.2]
  def change
    create_table :glbbms do |t|

      t.string    :glhd_id
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      
      t.integer   :karyawan_id
      t.integer   :droppoint_id
      t.integer   :kendaraan_id
      t.integer   :perkiraan_id, null: false

      t.integer   :km_lama
      t.integer   :km_baru
      t.string    :jenis_bbm
      t.float     :liter
      t.float     :biaya_bbm

      t.text      :description
      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5 #Target 5=Register 7=Error 3=Fixed 0=Valid

      t.timestamps
    end
    add_index :glbbms, :tanggal
    add_index :glbbms, :perkiraan_id
    add_index :glbbms, :droppoint_id
    add_index :glbbms, :kendaraan_id
    add_index :glbbms, :jenis_bbm
  end
end
