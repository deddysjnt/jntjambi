class CreateGatewayTariks < ActiveRecord::Migration[5.2]
  def change
    create_table :gateway_tariks do |t|

      t.datetime  :tanggal_tarik, default: -> {'CURRENT_TIMESTAMP'}, null: false

      t.string    :nomor_smu
      t.integer   :biaya_penarikan
      t.integer   :kg_real
      t.integer   :jumlah_bagging

      t.integer   :agent_id
      t.integer   :droppoint_id

      t.integer   :karyawan_id
      t.integer   :perkiraan_id
      t.integer   :user_add
      t.integer   :user_edit
      t.string    :ip_akses

      t.timestamps
    end
    add_index :gateway_tariks, :tanggal_tarik
  end
end
