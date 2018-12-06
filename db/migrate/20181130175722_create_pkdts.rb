class CreatePkdts < ActiveRecord::Migration[5.2]
  def change
    create_table :pkdts do |t|
      t.references :pkhd
      t.references :product
      t.references :gudang
      t.string :keterangan
      t.decimal :qty, default: 1
      t.string :satuan
      t.decimal :hpp_fifo
      t.integer :entry_pos_product, default: 0

      t.timestamps
    end
  end
end
