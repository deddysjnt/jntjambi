class CreateBiayaBbms < ActiveRecord::Migration[5.2]
  def change
    create_table :biaya_bbms do |t|

      t.string    :nomor_transaksi
      t.string    :nomor_refrensi
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      
      t.integer   :karyawan_id
      t.integer   :droppoint_id
      t.integer   :kendaraan_id
      t.integer   :perkiraan_id, null: false

      t.integer   :km_lama
      t.integer   :km_baru
      t.string    :jenis_bbm
      t.float     :liter
      t.float     :biaya
      
      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5 #Target 5=Register 7=Error 3=Fixed 0=Valid

      t.timestamps
    end
    add_index :biaya_bbms, :tanggal
    add_index :biaya_bbms, :perkiraan_id
    add_index :biaya_bbms, :droppoint_id
    add_index :biaya_bbms, :kendaraan_id
    add_index :biaya_bbms, :jenis_bbm
  end
end
