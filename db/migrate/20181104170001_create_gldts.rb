class CreateGldts < ActiveRecord::Migration[5.2]
  def change
    create_table :gldts do |t|

      t.string    :glhd_id      
      t.integer   :karyawan_id
      t.integer   :droppoint_id
      t.string    :kendaraan_id
      t.integer   :perkiraan_id, null: false

      t.string    :description
      t.string    :catatan_khusus

      t.decimal   :debet, default: 0
      t.decimal   :credit, default: 0

    end
    add_index :gldts, :perkiraan_id
    add_index :gldts, :droppoint_id
    add_index :gldts, :karyawan_id
    add_index :gldts, :kendaraan_id
  end
end
