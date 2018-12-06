class CreateEntryPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_posts do |t|
      t.string :transaksi, null: false
      t.integer :last_num, default: 0
      t.string :format_key

      t.timestamps
    end
  end
end
