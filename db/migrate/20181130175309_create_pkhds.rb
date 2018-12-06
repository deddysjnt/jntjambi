class CreatePkhds < ActiveRecord::Migration[5.2]
  def change
    create_table :pkhds do |t|
      t.references :droppoint
      t.string :nomor, null: false, unique: true
      t.string :no_ref
      t.datetime :tanggal, default: -> {'CURRENT_TIMESTAMP'}
      t.text :description
      t.datetime :tanggal_approve
      t.integer :user_approve
      t.integer :user_add
      t.integer :user_edit
      t.string :ip_address
      t.integer :flag

      t.timestamps
    end
  end
end
