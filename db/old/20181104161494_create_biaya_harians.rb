class CreateBiayaHarians < ActiveRecord::Migration[5.2]
  def change
    create_table :biaya_harians do |t|

      t.string    :nomor_transaksi
      t.string    :nomor_refrensi

      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      
      t.integer   :karyawan_id
      t.integer   :droppoint_id
      t.string    :kendaraan_id

      t.string    :mobile_phone
      t.integer   :km_lama
      t.integer   :km_baru
      t.string    :keterangan
      t.string    :catatan_khusus

      t.integer   :perkiraan_id, null: false
      t.integer   :perkiraan_cr, null: false
      
      t.float     :biaya

      t.integer   :user_id
      t.integer   :user_edit
      t.integer   :user_approve
      t.integer   :tanggal_approve
      t.string    :ip_address

      t.integer   :flag, default: 5 #Target 5=Register 7=Error 3=Fixed 0=Valid

      t.timestamps
    end
    add_index :biaya_harians, :tanggal
    add_index :biaya_harians, :perkiraan_id
    add_index :biaya_harians, :perkiraan_cr
    add_index :biaya_harians, :droppoint_id
    add_index :biaya_harians, :karyawan_id
    add_index :biaya_harians, :kendaraan_id
  end
end
