# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_30_200858) do

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "agents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "kode_agent", null: false
    t.string "nama_agent", null: false
    t.text "alamat"
    t.string "kontak"
    t.string "email"
    t.string "telp"
    t.string "mobile_phone"
    t.string "kirim_via"
    t.string "jenis_transit"
    t.integer "jumlah_transit"
    t.integer "estimasi_tiba"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kode_agent"], name: "index_agents_on_kode_agent", unique: true
    t.index ["nama_agent"], name: "index_agents_on_nama_agent"
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "category_name", null: false
    t.string "ingroup"
    t.integer "level"
    t.string "description"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_name"], name: "index_categories_on_category_name"
    t.index ["ingroup"], name: "index_categories_on_ingroup"
  end

  create_table "dpbaggings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "kegiatan", default: "PACK"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "bagging_id"
    t.string "noref"
    t.integer "droppoint_asal"
    t.integer "kg_asal"
    t.integer "awb_asal"
    t.datetime "tanggal_kirim"
    t.string "manifest_id"
    t.datetime "tanggal_terima"
    t.integer "droppoint_terima"
    t.integer "kg_terima"
    t.integer "awb_terima"
    t.integer "selisih_kg"
    t.integer "selisih_awb"
    t.string "fresh_paket", default: "FRESH"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_asal"], name: "index_dpbaggings_on_droppoint_asal"
    t.index ["droppoint_terima"], name: "index_dpbaggings_on_droppoint_terima"
    t.index ["tanggal"], name: "index_dpbaggings_on_tanggal"
    t.index ["tanggal_terima"], name: "index_dpbaggings_on_tanggal_terima"
  end

  create_table "dpoutgoings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomor"
    t.integer "karyawan_id"
    t.integer "droppoint_id"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "transaksi", default: "DROP OFF"
    t.integer "awb_total"
    t.integer "uang_masuk"
    t.integer "perkiraan_id"
    t.integer "awb_ppcash_manual"
    t.integer "awb_dfod_manual"
    t.integer "awb_cod_manual"
    t.integer "awb_pppm_manual"
    t.integer "awb_ppcash_online"
    t.integer "awb_dfod_online"
    t.integer "awb_cod_online"
    t.integer "awb_pppm_online"
    t.float "nilai_ppcash_manual"
    t.float "nilai_dfod_manual"
    t.float "nilai_cod_manual"
    t.float "nilai_pppm_manual"
    t.float "nilai_ppcash_online"
    t.float "nilai_dfod_online"
    t.float "nilai_cod_online"
    t.float "nilai_pppm_online"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["karyawan_id"], name: "index_dpoutgoings_on_karyawan_id"
    t.index ["perkiraan_id"], name: "index_dpoutgoings_on_perkiraan_id"
    t.index ["tanggal"], name: "index_dpoutgoings_on_tanggal"
    t.index ["transaksi"], name: "index_dpoutgoings_on_transaksi"
  end

  create_table "droppoints", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "kode_dp", null: false
    t.string "nama_dp", null: false
    t.text "alamat"
    t.string "pic"
    t.string "telp"
    t.string "mobile_phone"
    t.string "email"
    t.string "area", default: "KOTA"
    t.text "rute_sprinter"
    t.datetime "tahun_buka"
    t.string "jam_buka"
    t.string "jam_tutup"
    t.integer "jarak_gateway"
    t.integer "jumlah_transit", default: 1
    t.integer "kasir_kas", default: 1
    t.integer "kasir_bank", default: 1
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kode_dp"], name: "index_droppoints_on_kode_dp", unique: true
    t.index ["nama_dp"], name: "index_droppoints_on_nama_dp"
  end

  create_table "entry_posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "transaksi", null: false
    t.integer "last_num", default: 0
    t.string "format_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "glbbms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "glhd_id"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "karyawan_id"
    t.integer "droppoint_id"
    t.integer "kendaraan_id"
    t.integer "perkiraan_id", null: false
    t.integer "km_lama"
    t.integer "km_baru"
    t.string "jenis_bbm"
    t.float "liter"
    t.float "biaya_bbm"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_id"], name: "index_glbbms_on_droppoint_id"
    t.index ["jenis_bbm"], name: "index_glbbms_on_jenis_bbm"
    t.index ["kendaraan_id"], name: "index_glbbms_on_kendaraan_id"
    t.index ["perkiraan_id"], name: "index_glbbms_on_perkiraan_id"
    t.index ["tanggal"], name: "index_glbbms_on_tanggal"
  end

  create_table "gldts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "glhd_id"
    t.integer "karyawan_id"
    t.integer "droppoint_id"
    t.string "kendaraan_id"
    t.integer "perkiraan_id", null: false
    t.string "description"
    t.string "catatan_khusus"
    t.decimal "debet", precision: 10, default: "0"
    t.decimal "credit", precision: 10, default: "0"
    t.index ["droppoint_id"], name: "index_gldts_on_droppoint_id"
    t.index ["karyawan_id"], name: "index_gldts_on_karyawan_id"
    t.index ["kendaraan_id"], name: "index_gldts_on_kendaraan_id"
    t.index ["perkiraan_id"], name: "index_gldts_on_perkiraan_id"
  end

  create_table "glhds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomor"
    t.string "noref"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.float "total_debet"
    t.float "total_credit"
    t.text "description"
    t.integer "user_add"
    t.integer "user_edit"
    t.integer "user_approve"
    t.integer "tanggal_approve"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nomor"], name: "index_glhds_on_nomor"
    t.index ["tanggal"], name: "index_glhds_on_tanggal"
  end

  create_table "glpulsas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "glhd_id"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "karyawan_id"
    t.integer "droppoint_id"
    t.integer "perkiraan_id"
    t.integer "jabatan_id"
    t.string "mobile_phone"
    t.string "jenis_pulsa"
    t.string "description", default: "ORDER PULSA"
    t.integer "nominal", default: 100000
    t.integer "blok_limit", default: 0
    t.float "biaya_pulsa", default: 0.0
    t.string "karyawan_isi"
    t.datetime "tanggal_isi"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_id"], name: "index_glpulsas_on_droppoint_id"
    t.index ["flag"], name: "index_glpulsas_on_flag"
    t.index ["jabatan_id"], name: "index_glpulsas_on_jabatan_id"
    t.index ["jenis_pulsa"], name: "index_glpulsas_on_jenis_pulsa"
    t.index ["karyawan_id"], name: "index_glpulsas_on_karyawan_id"
    t.index ["tanggal_isi"], name: "index_glpulsas_on_tanggal_isi"
  end

  create_table "gtw_smus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "kegiatan", default: "KIRIM"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "smu_id"
    t.string "noref"
    t.integer "biaya_smu"
    t.integer "kasir_smu"
    t.integer "biaya_koor"
    t.integer "kasir_koor"
    t.integer "kg_smu"
    t.integer "kg_fisik"
    t.integer "kg_selisih"
    t.integer "bagging_smu"
    t.integer "bagging_fisik"
    t.integer "bagging_selisih"
    t.string "maskapai"
    t.integer "kendaraan_id"
    t.string "transporter_team"
    t.text "description"
    t.integer "agent_id"
    t.datetime "tanggal_smu"
    t.integer "terms"
    t.datetime "tanggal_estimasi"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flag"], name: "index_gtw_smus_on_flag"
    t.index ["kegiatan"], name: "index_gtw_smus_on_kegiatan"
    t.index ["tanggal"], name: "index_gtw_smus_on_tanggal"
  end

  create_table "gtw_sortirs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "kegiatan", default: "UNPACK"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "manifest_id"
    t.text "bagging_id"
    t.integer "droppoint_asal"
    t.integer "kg_gtw"
    t.integer "awb_gtw"
    t.integer "kg_e3"
    t.integer "awb_e3"
    t.integer "kg_selisih_e3"
    t.integer "awb_selisih_e3"
    t.boolean "fresh_paket", default: true
    t.integer "agent_id"
    t.integer "droppoint_tujuan"
    t.datetime "tanggal_dp"
    t.integer "awb_dp"
    t.integer "kg_dp"
    t.integer "awb_selisih_dp"
    t.integer "kg_selisih_dp"
    t.text "gtw_team_kerja"
    t.string "gtw_team_shift"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gtw_team_shift"], name: "index_gtw_sortirs_on_gtw_team_shift"
    t.index ["kegiatan"], name: "index_gtw_sortirs_on_kegiatan"
    t.index ["tanggal"], name: "index_gtw_sortirs_on_tanggal"
  end

  create_table "gtw_stmps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "kegiatan"
    t.datetime "tanggal"
    t.string "manifest_id"
    t.string "noref"
    t.integer "droppoint_id"
    t.integer "qty_bagging_fisik"
    t.integer "kg_fisik"
    t.integer "awb_fisik"
    t.integer "droppoint_tujuan"
    t.integer "qty_bagging_manifest"
    t.integer "kg_manisfet"
    t.integer "awb_manifest"
    t.integer "selisih_bagging"
    t.integer "selisih_kg"
    t.integer "selisih_awb"
    t.string "fresh_paket"
    t.integer "agent_id"
    t.string "diterima_dari"
    t.integer "diserahkan_oleh"
    t.text "gtw_team_kerja"
    t.integer "gtw_team_shift"
    t.integer "kendaraan_id"
    t.text "transporter_team"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flag"], name: "index_gtw_stmps_on_flag"
    t.index ["gtw_team_shift"], name: "index_gtw_stmps_on_gtw_team_shift"
    t.index ["kegiatan"], name: "index_gtw_stmps_on_kegiatan"
    t.index ["tanggal"], name: "index_gtw_stmps_on_tanggal"
  end

  create_table "gudangs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "droppoint_id"
    t.string "nama_gudang"
    t.string "area_layanan"
    t.string "kota"
    t.string "kecamatan"
    t.text "alamat"
    t.string "no_telp"
    t.string "mobile_phone"
    t.string "contac"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_id"], name: "index_gudangs_on_droppoint_id"
  end

  create_table "jabatanpusats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama_jabatan_pusat", null: false
    t.string "divisi_kerja_pusat", default: "OPERASIONAL LAPANGAN"
    t.integer "gapok_training_pusat", default: 0, null: false
    t.integer "gapok_tetap_pusat", default: 0, null: false
    t.integer "tunjangan_jabatan_pusat", default: 0, null: false
    t.integer "tunjangan_masa_kerja_pusat", default: 0, null: false
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["divisi_kerja_pusat"], name: "index_jabatanpusats_on_divisi_kerja_pusat"
    t.index ["nama_jabatan_pusat"], name: "index_jabatanpusats_on_nama_jabatan_pusat", unique: true
  end

  create_table "jabatans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "jabatanpusat_id", null: false
    t.string "nama_jabatan", null: false
    t.string "divisi_kerja", default: "OPERASIONAL LAPANGAN"
    t.integer "gapok_training", default: 0, null: false
    t.integer "gapok_tetap", default: 0, null: false
    t.integer "tunjangan_jabatan", default: 0, null: false
    t.integer "tunjangan_masa_kerja", default: 0, null: false
    t.integer "claim_bbm_set", default: 420, null: false
    t.integer "claim_pulsa_limit_1bulan", default: 0, null: false
    t.integer "claim_service_limit_3bulan", default: 0, null: false
    t.integer "claim_service_limit_6bulan", default: 0, null: false
    t.integer "claim_service_limit_12bulan", default: 0, null: false
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["divisi_kerja"], name: "index_jabatans_on_divisi_kerja"
    t.index ["nama_jabatan"], name: "index_jabatans_on_nama_jabatan", unique: true
  end

  create_table "karyawans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nama_karyawan", null: false
    t.string "nik", null: false
    t.string "ktp", null: false
    t.datetime "tanggal_lahir"
    t.string "jenis_kelamin"
    t.string "agama"
    t.string "pendidikan"
    t.string "keterampilan_khusus"
    t.string "kota"
    t.string "kecamatan"
    t.text "alamat"
    t.string "pos"
    t.string "mobile_phone"
    t.string "email"
    t.string "lokasi_berkas"
    t.string "refrensi"
    t.integer "droppoint_id"
    t.integer "kasir_piutang"
    t.integer "kasir_kas"
    t.integer "kasir_bank"
    t.string "status"
    t.string "bpjs_tk"
    t.string "bpjs_ks"
    t.string "bank"
    t.string "norek"
    t.string "url_foto"
    t.integer "jabatan_id", null: false
    t.integer "jabatanpusat_id", null: false
    t.datetime "tanggal_masuk", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "tanggal_mutasi"
    t.datetime "tanggal_resign"
    t.datetime "tanggal_gajian"
    t.integer "flag", default: 5, null: false
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jabatan_id"], name: "index_karyawans_on_jabatan_id"
    t.index ["jabatanpusat_id"], name: "index_karyawans_on_jabatanpusat_id"
    t.index ["nama_karyawan"], name: "index_karyawans_on_nama_karyawan"
    t.index ["tanggal_masuk"], name: "index_karyawans_on_tanggal_masuk"
  end

  create_table "kendaraans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nopol", null: false
    t.string "kode_aset", default: "GME-MOB/001"
    t.string "lokasi_layanan", default: "KOTA", null: false
    t.string "parkir", default: "PALMERAH", null: false
    t.string "pemilik", default: "PT", null: false
    t.string "sopir_tetap"
    t.text "spec_mobil"
    t.text "rute"
    t.integer "tahun", default: 0
    t.integer "ban_set", default: 0
    t.datetime "tanggal_register"
    t.datetime "tanggal_stnk"
    t.datetime "tanggal_kir"
    t.datetime "tanggal_pajak"
    t.integer "reminder_surat", default: 7
    t.integer "km_awal", default: 0
    t.integer "km_next_service", default: 0
    t.integer "reminder_service", default: 100
    t.integer "flag", default: 5, null: false
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nopol"], name: "index_kendaraans_on_nopol", unique: true
    t.index ["pemilik"], name: "index_kendaraans_on_pemilik"
  end

  create_table "motors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "karyawan_id"
    t.string "nopol"
    t.text "spect"
    t.datetime "tanggal_register"
    t.integer "tahun_produksi"
    t.integer "km_reg"
    t.integer "flag", default: 5
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["karyawan_id"], name: "index_motors_on_karyawan_id"
    t.index ["nopol"], name: "index_motors_on_nopol"
  end

  create_table "orderpulsas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "nomor"
    t.string "noref"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.float "total_debet"
    t.float "total_credit"
    t.text "description"
    t.integer "user_add"
    t.integer "user_edit"
    t.integer "user_approve"
    t.integer "tanggal_approve"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nomor"], name: "index_orderpulsas_on_nomor"
    t.index ["tanggal"], name: "index_orderpulsas_on_tanggal"
  end

  create_table "packs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "droppoint_id"
    t.datetime "tanggal"
    t.string "manifest_id"
    t.string "tujuan"
    t.integer "agent_tujuan"
    t.integer "droppoint_tujuan"
    t.string "nomor_bagging", limit: 45
    t.integer "kg_fisik"
    t.integer "awb_fisik"
    t.text "team_kerja"
    t.integer "team_shift"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perkiraans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "acno", null: false
    t.string "nama_perkiraan", null: false
    t.integer "level_view", default: 3
    t.integer "sticky_order_view", default: 500, null: false
    t.integer "sticky_order_audit", default: 500, null: false
    t.string "buku", default: "PL", null: false
    t.boolean "ac_detail", default: false
    t.string "normal_balance", default: "D"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ac_detail"], name: "index_perkiraans_on_ac_detail"
    t.index ["acno"], name: "index_perkiraans_on_acno"
    t.index ["buku"], name: "index_perkiraans_on_buku"
    t.index ["nama_perkiraan"], name: "index_perkiraans_on_nama_perkiraan"
  end

  create_table "pkdts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pkhd_id"
    t.bigint "product_id"
    t.bigint "gudang_id"
    t.string "keterangan"
    t.decimal "qty", precision: 10, default: "1"
    t.string "satuan"
    t.decimal "hpp_fifo", precision: 10
    t.integer "entry_pos_product", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gudang_id"], name: "index_pkdts_on_gudang_id"
    t.index ["pkhd_id"], name: "index_pkdts_on_pkhd_id"
    t.index ["product_id"], name: "index_pkdts_on_product_id"
  end

  create_table "pkhds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "droppoint_id"
    t.string "nomor", null: false
    t.string "no_ref"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_id"], name: "index_pkhds_on_droppoint_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "product_name", null: false
    t.string "barcode"
    t.string "satuan"
    t.float "hitungan_dasar", default: 1.0, null: false
    t.integer "sticky_order", default: 500, null: false
    t.integer "tipe", default: 2, null: false
    t.boolean "produksi_mode", default: false, null: false
    t.text "description"
    t.string "url_picture"
    t.float "qty_in", default: 0.0
    t.float "qty_out", default: 0.0
    t.float "stok", default: 0.0
    t.float "harga_in", default: 0.0
    t.float "harga_rata", default: 0.0
    t.float "harga_jual", default: 0.0
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["barcode"], name: "index_products_on_barcode"
    t.index ["product_name"], name: "index_products_on_product_name"
    t.index ["stok"], name: "index_products_on_stok"
    t.index ["tipe", "product_name"], name: "index_products_on_tipe_and_product_name"
  end

  create_table "pulsas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "orderpulsa_id"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "karyawan_id"
    t.integer "droppoint_id"
    t.integer "perkiraan_id"
    t.integer "jabatan_id"
    t.string "mobile_phone"
    t.string "jenis_pulsa"
    t.string "description", default: "ORDER PULSA"
    t.integer "nominal", default: 100000
    t.integer "blok_limit", default: 0
    t.float "biaya_pulsa", default: 0.0
    t.string "karyawan_isi"
    t.datetime "tanggal_isi"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_id"], name: "index_pulsas_on_droppoint_id"
    t.index ["flag"], name: "index_pulsas_on_flag"
    t.index ["jabatan_id"], name: "index_pulsas_on_jabatan_id"
    t.index ["jenis_pulsa"], name: "index_pulsas_on_jenis_pulsa"
    t.index ["karyawan_id"], name: "index_pulsas_on_karyawan_id"
    t.index ["tanggal_isi"], name: "index_pulsas_on_tanggal_isi"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sp_karyawans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nomor_sp", null: false
    t.integer "karyawan_id", null: false
    t.text "alasan", null: false
    t.datetime "tanggal_sp", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "jenis_sp", default: 1, null: false
    t.integer "masa_berlaku", default: 7
    t.integer "tanggal_review"
    t.text "review_perubahan"
    t.integer "review_by"
    t.text "keputusan_lanjutan"
    t.integer "flag", default: 5, null: false
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["karyawan_id"], name: "index_sp_karyawans_on_karyawan_id", unique: true
    t.index ["nomor_sp"], name: "index_sp_karyawans_on_nomor_sp", unique: true
    t.index ["tanggal_review"], name: "index_sp_karyawans_on_tanggal_review"
    t.index ["tanggal_sp"], name: "index_sp_karyawans_on_tanggal_sp"
  end

  create_table "sprinter_bawas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "nomor_form"
    t.integer "karyawan_id", null: false
    t.integer "droppoint_id", null: false
    t.integer "jabatan_id", null: false
    t.integer "awb_bawa"
    t.integer "awb_cod"
    t.float "nilai_cod"
    t.integer "awb_dfod"
    t.float "nilai_dfod"
    t.integer "awb_ppcash"
    t.integer "pop_awb_ppcash"
    t.integer "pop_awb_dfod"
    t.integer "pop_awb_cod"
    t.integer "km_start"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_id"], name: "index_sprinter_bawas_on_droppoint_id"
    t.index ["karyawan_id"], name: "index_sprinter_bawas_on_karyawan_id"
    t.index ["tanggal"], name: "index_sprinter_bawas_on_tanggal"
  end

  create_table "sprinter_gagals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "sprinter_kembali_id"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "droppoint_id"
    t.integer "karyawan_id"
    t.string "awb", null: false
    t.string "masalah"
    t.string "paket", default: "COD"
    t.text "description"
    t.integer "user_id"
    t.integer "user_edit"
    t.integer "user_approve"
    t.integer "tanggal_approve"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["awb"], name: "index_sprinter_gagals_on_awb"
    t.index ["droppoint_id"], name: "index_sprinter_gagals_on_droppoint_id"
    t.index ["karyawan_id"], name: "index_sprinter_gagals_on_karyawan_id"
    t.index ["tanggal"], name: "index_sprinter_gagals_on_tanggal"
  end

  create_table "sprinter_kembalis", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "waiting_list"
    t.datetime "tanggal", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "nomor_form"
    t.integer "karyawan_id", null: false
    t.integer "droppoint_id", null: false
    t.integer "jabatan_id", null: false
    t.integer "awb_bawa"
    t.integer "awb_sukses"
    t.integer "awb_gagal"
    t.integer "target_set"
    t.float "pencapaian"
    t.integer "point"
    t.integer "uang_masuk"
    t.integer "uang_keluar"
    t.integer "uang_setoran"
    t.integer "uang_selisih"
    t.integer "perkiraan_id"
    t.integer "pickup_mitra"
    t.integer "pickup_client"
    t.integer "pickup_user"
    t.integer "awb_cod_sukses"
    t.integer "awb_dfod_sukses"
    t.integer "awb_ppcash_sukses"
    t.integer "pop_awb_ppcash_kembali"
    t.integer "pop_awb_dfod_kembali"
    t.integer "pop_awb_cod_kembali"
    t.integer "km_start"
    t.integer "km_stop"
    t.integer "jarak_km"
    t.integer "harga_km"
    t.integer "biaya_bbm"
    t.integer "biaya_lain"
    t.string "jenis_biaya_lain"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["droppoint_id"], name: "index_sprinter_kembalis_on_droppoint_id"
    t.index ["flag"], name: "index_sprinter_kembalis_on_flag"
    t.index ["jabatan_id"], name: "index_sprinter_kembalis_on_jabatan_id"
    t.index ["karyawan_id"], name: "index_sprinter_kembalis_on_karyawan_id"
    t.index ["perkiraan_id"], name: "index_sprinter_kembalis_on_perkiraan_id"
    t.index ["tanggal"], name: "index_sprinter_kembalis_on_tanggal"
    t.index ["waiting_list"], name: "index_sprinter_kembalis_on_waiting_list"
  end

  create_table "unpacks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "droppoint_id"
    t.string "sumber"
    t.datetime "tanggal"
    t.string "manifest_id"
    t.string "nomor_smu"
    t.integer "droppoint_asal"
    t.integer "agent_asal"
    t.string "nomor_bagging", limit: 45
    t.integer "kg_fisik"
    t.integer "awb_fisik"
    t.integer "kg_e3"
    t.integer "awb_e3"
    t.boolean "fresh_paket"
    t.text "team_kerja"
    t.integer "team_shift"
    t.text "description"
    t.datetime "tanggal_approve"
    t.integer "user_approve"
    t.integer "user_add"
    t.integer "user_edit"
    t.string "ip_address"
    t.integer "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.integer "karyawan_id"
    t.string "username", default: "", null: false
    t.integer "level", default: 5, null: false
    t.string "mobile_phone"
    t.string "nik", default: "", null: false
    t.string "divisi", default: "CLOSED"
    t.string "cabang", default: "CLOSED"
    t.string "droppoint", default: "CLOSED"
    t.boolean "tambahdata", default: true
    t.boolean "hapusdata", default: false
    t.boolean "ubahdata", default: false
    t.boolean "lihatdata", default: true
    t.boolean "akunstatus", default: true
    t.boolean "approved", default: false, null: false
    t.integer "approved_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["approved"], name: "index_users_on_approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nik"], name: "index_users_on_nik", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "ware_houses", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "gudang_id", null: false
    t.float "qty_in", default: 0.0
    t.float "qty_out", default: 0.0
    t.decimal "open_disc", precision: 10, default: "0"
    t.integer "harga_jual_grosir", default: 0
    t.integer "harga_jual_retail", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gudang_id"], name: "index_ware_houses_on_gudang_id"
    t.index ["product_id"], name: "index_ware_houses_on_product_id"
  end

  add_foreign_key "ware_houses", "gudangs"
  add_foreign_key "ware_houses", "products"
end
