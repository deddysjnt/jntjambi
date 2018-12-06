class CreateBiayaPulsas < ActiveRecord::Migration[5.2]
  def change
    create_table :biaya_pulsas do |t|

      t.string    :nomor_transaksi
      t.string    :nomor_refrensi
      t.datetime  :tanggal_order, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.datetime  :tanggal_isi
      
      t.integer   :karyawan_id
      t.integer   :droppoint_id
      t.integer   :perkiraan_id

      t.string    :mobile_phone
      t.string    :jenis_pulsa, default:"SIMPATI"
      t.string    :keterangan, default:"ORDER PULSA"
      t.integer   :nominal, default: 100000
      t.float     :biaya_pulsa, default: 0
      
      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5 #Target 5=Menunggu Persetujuan 3= OK-Isikan Pulsa 2=Top-up Sukses 1=Reject By Limit 0=Rejec by PIC

      t.timestamps
    end
    add_index :biaya_pulsas, :karyawan_id
    add_index :biaya_pulsas, :tanggal_isi
    add_index :biaya_pulsas, :jenis_pulsa
    add_index :biaya_pulsas, :flag
    add_index :biaya_pulsas, :droppoint_id
  end
end
