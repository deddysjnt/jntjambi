class CreateForumActions < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_actions do |t|
      t.integer   :forum_id
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.text      :resolusi

      t.string    :usulan
      t.string    :follower


      t.integer   :flag, default: 5
      t.integer   :user_id
      t.integer   :user_edit
      t.string    :ip_address

      t.timestamps
    end
    add_index :forum_actions, :usulan
    add_index :forum_actions, :tanggal
    add_index :forum_actions, :follower
  end
end
