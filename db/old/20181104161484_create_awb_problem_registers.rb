class CreateAwbProblemRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :awb_problem_registers do |t|
      t.string    :awb, null: false, unique: true
      t.integer   :droppoint_id, null: false, foreign_key:true
      t.datetime  :tanggal_register, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.datetime  :tanggal_awb
      t.datetime  :tanggal_incoming
      t.integer   :masalah_id, null: false, foreign_key:true
      t.text      :keterangan
      t.integer   :register_id
      t.integer   :sticky_order, default: 100
      t.string    :status, default: "01 REGISTER PRIORITAS"

      t.timestamps
    end
    add_index :awb_problem_registers, :awb, unique:true
    add_index :awb_problem_registers, :tanggal_register
  end
end
