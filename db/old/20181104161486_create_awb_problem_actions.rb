class CreateAwbProblemActions < ActiveRecord::Migration[5.2]
  def change
    create_table :awb_problem_actions do |t|
      t.integer   :awbmasalah_id, null: false, foreign_key:true
      t.datetime  :tanggal_followup, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.text      :resolusi_penerima
      t.text      :resolusi_pengirim
      t.text      :resolusi_dpoutgoing
      t.text      :resolusi_agent
      t.text      :kesimpulan
      t.integer   :follower_id, null: false, foreign_key: true
      t.string    :status

      t.timestamps
    end
    add_index :awb_problem_actions, :awbmasalah_id, unique:true
    add_index :awb_problem_actions, :tanggal_followup
  end
end
