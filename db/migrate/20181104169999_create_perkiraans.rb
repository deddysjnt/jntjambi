class CreatePerkiraans < ActiveRecord::Migration[5.2]
  def change
    create_table :perkiraans do |t|
      t.string  :acno, null: false, unique:true
      t.string  :nama_perkiraan, null: false, unique:true
      t.integer :level_view, default: 3
      
      t.integer :sticky_order_view, default: 500, null: false
      t.integer :sticky_order_audit, default: 500, null: false

      t.string  :buku, default: "PL", null: false
      t.boolean :ac_detail, default: false
      t.string  :normal_balance, default: "D"

      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :perkiraans, :acno 
    add_index :perkiraans, :nama_perkiraan 
    add_index :perkiraans, :buku
    add_index :perkiraans, :ac_detail
  end
end
