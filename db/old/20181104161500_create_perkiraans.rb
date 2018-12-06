class CreatePerkiraans < ActiveRecord::Migration[5.2]
  def change
    create_table :perkiraans do |t|
      t.string  :acno, null: false, unique:true
      t.string  :nama_perkiraan, null: false, unique:true
      t.integer :level_view, default: 3
      
      t.integer :sticky_order_view, default: 500, null: false
      t.integer :sticky_order_audit, default: 500, null: false

      t.boolean :tb_post, default: false, null: false
      t.boolean :tb_head, default: false

      t.timestamps
    end
    add_index :perkiraans, :acno 
    add_index :perkiraans, :nama_perkiraan 
    add_index :perkiraans, :tb_post
  end
end
