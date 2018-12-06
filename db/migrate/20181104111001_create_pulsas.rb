class CreatePulsas < ActiveRecord::Migration[5.2]
  def change
    create_table :pulsas do |t|

      t.string    :orderpulsa_id
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
           
      t.integer   :karyawan_id
      t.integer   :droppoint_id #set auto from karyawan
      t.integer   :perkiraan_id #set auto from setting pulsa
      t.integer   :jabatan_id   #set auto from karyawan

      t.string    :mobile_phone
      t.string    :jenis_pulsa
      t.string    :description, default:"ORDER PULSA"
      t.integer   :nominal, default: 100000
      t.integer   :blok_limit, default: 0

      t.float     :biaya_pulsa, default: 0
      
      t.string    :karyawan_isi
      t.datetime  :tanggal_isi, default: nil
      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5 #Target 5=Menunggu Persetujuan 3= OK-Isikan Pulsa 2=Top-up Sukses 1=Reject By Limit 0=Rejec by PIC

      t.timestamps
    end
    add_index :pulsas, :karyawan_id
    add_index :pulsas, :tanggal_isi
    add_index :pulsas, :jenis_pulsa
    add_index :pulsas, :droppoint_id
    add_index :pulsas, :jabatan_id
    add_index :pulsas, :flag
  end
end
