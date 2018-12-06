class CreateMotors < ActiveRecord::Migration[5.2]
  def change
    create_table :motors do |t|
      t.integer :karyawan_id 
      t.string :nopol
      t.text :spect
      t.datetime :tanggal_register
      t.integer :tahun_produksi
      t.integer :km_reg
      t.integer :flag, default: 5
      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.timestamps
    end
    add_index :motors, :karyawan_id
    add_index :motors, :nopol
  end
end
