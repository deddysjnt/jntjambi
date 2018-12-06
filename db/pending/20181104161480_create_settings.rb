class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :transaksi, null: false, unique: true
      t.integer :reminder_oli_set_motor, default: 1000, null: false
      t.integer :reminder_oli_set_mobil, default: 1000, null: false

      t.timestamps
    end
  end
end
