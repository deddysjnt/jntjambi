class CreateSpKaryawans < ActiveRecord::Migration[5.2]
  def change
    create_table :sp_karyawans do |t|
      t.string    :nomor_sp, null: false, unique: true
      t.integer   :karyawan_id, null: false, foreign_key:true
      t.text      :alasan, null: false
      t.datetime  :tanggal_sp, default: -> {'CURRENT_TIMESTAMP'}, null: false
      
      t.integer   :jenis_sp, default: 1, null: false
      t.integer   :masa_berlaku, default: 7

      t.integer   :tanggal_review
      t.text      :review_perubahan
      t.integer   :review_by
      
      t.text      :keputusan_lanjutan
      t.integer   :approve_by
      t.integer   :status_sp

      t.timestamps
    end
    add_index :sp_karyawans, :nomor_sp ,unique: true
    add_index :sp_karyawans, :karyawan_id ,unique: true
    add_index :sp_karyawans, :tanggal_sp
    add_index :sp_karyawans, :tanggal_review
  end
end
