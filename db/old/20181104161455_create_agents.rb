class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :kode_agent, null: false, unique: true
      t.string :nama_agent, null: false
      t.text :alamat
      t.string :kontak
      t.string :email
      t.string :telp
      t.string :mobile_phone
      t.string :kirim_via
      t.string :jenis_transit
      t.integer :jumlah_transit
      t.integer :estimasi_tiba
      
      t.timestamps
    end
    add_index :agents, :kode_agent ,unique: true
    add_index :agents, :nama_agent
  end
end
