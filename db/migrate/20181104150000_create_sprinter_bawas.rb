class CreateSprinterBawas < ActiveRecord::Migration[5.2]
  def change
    create_table :sprinter_bawas do |t|

      t.datetime :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.string  :nomor_form
      t.integer :karyawan_id, null: false
      t.integer :droppoint_id, null: false
      t.integer :jabatan_id, null: false
      
      t.integer :awb_bawa

      t.integer :awb_cod
      t.float   :nilai_cod
      t.integer :awb_dfod
      t.float   :nilai_dfod

      t.integer :pop_awb_ppcash
      t.integer :pop_awb_dfod
      t.integer :pop_awb_cod
      
      t.integer   :km_start
      t.text      :description

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :sprinter_bawas, :karyawan_id
    add_index :sprinter_bawas, :droppoint_id    
    add_index :sprinter_bawas, :tanggal
  end
end
