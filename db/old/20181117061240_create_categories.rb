class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string 	:name, null: false, unique: true
      t.string 	:ingroup
      t.integer	:level
      t.string 	:description

      t.timestamps
    end
    add_index :categories, :name
    add_index :categories, :ingroup
  end
end
