json.extract! unpack, :id, :droppoint_id, :sumber, :tanggal, :manifest_id, :nomor_smu, :droppoint_asal, :agent_asal, :nomor_bagging, :kg_fisik, :awb_fisik, :kg_e3, :awb_e3, :fresh_paket, :team_kerja, :team_shift, :description, :tanggal_approve, :user_approve, :user_add, :user_edit, :ip_address, :flag, :created_at, :updated_at
json.url unpack_url(unpack, format: :json)
