class CreateAwbGagalDeliverys < ActiveRecord::Migration[5.2]
  def change
    create_table :awb_gagal_deliverys do |t|
      t.string    :awb, null: false
      t.integer   :droppoint_id, null: false, foreign_key:true
      t.integer   :sprinter_id, null: false, foreign_key:true
      t.datetime  :tanggal_register, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.string    :masalah_id, null: false, foreign_key:true
      t.string    :nomor_form
      t.integer   :register_id
      t.text      :keterangan

      t.timestamps
    end
    add_index :awb_gagal_deliverys, :awb
    add_index :awb_gagal_deliverys, :tanggal_register
  end
end
