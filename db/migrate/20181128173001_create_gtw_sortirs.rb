class CreateGtwSortirs < ActiveRecord::Migration[5.2]
  def change
    create_table :gtw_sortirs do |t|
      t.string    :kegiatan, default:"UNPACK" #[UNPACK,PACK]
      t.datetime  :tanggal, default: -> {'CURRENT_TIMESTAMP'}, null: false

      t.string    :manifest_id
      t.text      :bagging_id
      
      t.integer   :droppoint_asal
      t.integer   :kg_gtw
      t.integer   :awb_gtw

      t.integer   :kg_e3
      t.integer   :awb_e3
      t.integer   :kg_selisih_e3
      t.integer   :awb_selisih_e3

      t.boolean   :fresh_paket, default: true

      t.integer   :agent_id

      t.integer   :droppoint_tujuan
      t.datetime  :tanggal_dp
      t.integer   :awb_dp
      t.integer   :kg_dp
      t.integer   :awb_selisih_dp
      t.integer   :kg_selisih_dp
      
      t.text      :gtw_team_kerja
      t.string    :gtw_team_shift

      t.text      :description

      t.datetime  :tanggal_approve
      t.integer   :user_approve
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_address

      t.integer   :flag, default: 5

      t.timestamps
    end
    add_index :gtw_sortirs, :tanggal
    add_index :gtw_sortirs, :kegiatan
    add_index :gtw_sortirs, :gtw_team_shift
  end
end
