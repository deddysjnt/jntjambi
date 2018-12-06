class CreateGtwSmus < ActiveRecord::Migration[5.2]
  def change
    create_table :gtw_smus do |t|

      t.string    :kegiatan, default:"KIRIM" #[KIRIM] [TARIK]
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false

      t.string    :smu_id
      t.string    :noref

      t.integer   :biaya_smu
      t.integer   :kasir_smu
      t.integer   :biaya_koor
      t.integer   :kasir_koor

      t.integer   :kg_smu
      t.integer   :kg_fisik
      t.integer   :kg_selisih

      t.integer   :bagging_smu
      t.integer   :bagging_fisik
      t.integer   :bagging_selisih

      t.string    :maskapai
      t.integer   :kendaraan_id
      t.string    :transporter_team
      t.text      :description

      t.integer   :agent_id
      t.datetime  :tanggal_smu
      t.integer   :terms
      t.datetime  :tanggal_estimasi
      
      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 0 #[0]-Terima [5]-Kirim ke-Agent (pending-monitoring tiba di agent)

      t.timestamps
    end
    add_index :gtw_smus, :tanggal
    add_index :gtw_smus, :kegiatan
    add_index :gtw_smus, :flag
  end
end
