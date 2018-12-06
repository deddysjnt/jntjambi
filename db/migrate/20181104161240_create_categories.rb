class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string 	:category_name, null: false, unique: true
      t.string 	:ingroup
      t.integer	:level
      t.string 	:description

      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :categories, :category_name
    add_index :categories, :ingroup
  end
end
