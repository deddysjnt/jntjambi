rails g scaffold SprinterGagals sprinter_kembali_id:integer tanggal:datetime karyawan_id:integer droppoint_id:integer awb:string masalah:text paket:string description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer

rails g scaffold Dpoutgoings nomor:string karyawan_id:integer droppoint_id:integer tanggal:datetime transaksi:string awb_total:integer uang_masuk:integer perkiraan_id:integer awb_ppcash_manual:integer awb_dfod_manual:integer awb_cod_manual:integer awb_pppm_manual:integer awb_ppcash_online:integer awb_dfod_online:integer awb_cod_online:integer awb_pppm_online:integer nilai_ppcash_manual:float nilai_dfod_manual:float nilai_cod_manual:float nilai_pppm_manual:float nilai_ppcash_online:float nilai_dfod_online:float nilai_cod_online:float nilai_pppm_online:float description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer

rails g scaffold GtwSortirs kegiatan:string tanggal:datetime manifest_id:string bagging_id:string droppoint_asal:integer kg_gtw:integer awb_gtw:integer kg_e3:integer awb_e3:integer kg_selisih_e3:integer awb_selisih_e3:integer fresh_paket:boolean agent_id:integer droppoint_tujuan:integer tanggal_dp:datetime awb_dp:integer kg_dp:integer awb_selisih_dp:integer kg_selisih_dp:integer gtw_team_kerja:text gtw_team_shift:integer description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer


rails g scaffold Unpacks droppoint_id:integer sumber:string tanggal:datetime manifest_id:string nomor_smu:string droppoint_asal:integer agent_asal:integer nomor_bagging:text kg_fisik:integer awb_fisik:integer kg_e3:integer awb_e3:integer fresh_paket:boolean team_kerja:text team_shift:integer description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer


rails g scaffold Packs droppoint_id:integer tanggal:datetime manifest_id:string tujuan:string agent_tujuan:integer droppoint_tujuan:integer nomor_bagging:integer kg_fisik:integer awb_fisik:integer team_kerja:text team_shift:integer description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer





rails g scaffold GtwStmps kegiatan:string tanggal:datetime manifest_id:string noref:string qty_bagging_fisik:integer kg_fisik:integer awb_fisik:integer qty_bagging_manifest:integer kg_manisfet:integer awb_manifest:integer selisih_bagging:integer selisih_kg:integer selisih_awb:integer fresh_paket:string agent_id:integer droppoint_id:integer diterima_dari:string diserahkan_oleh:integer gtw_team_kerja:text gtw_team_shift:integer kendaraan_id:integer transporter_team:text description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer

rails g scaffold GtwSmus kegiatan:string tanggal:datetime smu_id:string noref:string biaya_smu:integer kasir_smu:integer biaya_koor:integer kasir_koor:integer kg_smu:integer kg_fisik:integer kg_selisih:integer bagging_smu:integer bagging_fisik:integer bagging_selisih:integer maskapai:string kendaraan_id:integer transporter_team:text description:text agent_id:integer tanggal_smu:datetime terms:integer tanggal_estimasi:datetime description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer

rails g scaffold Dpbaggings kegiatan:string tanggal:datetime bagging_id:string noref:string droppoint_asal:integer kg_asal:integer awb_asal:integer tanggal_kirim:datetime manifest_id:text tanggal_terima:datetime droppoint_terima:datetime kg_terima:integer awb_terima:integer selisih_kg:integer selisih_awb:integer fresh_paket:string description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer

rails g scaffold Pkhds droppoint:references nomor:string no_ref:string tanggal:datetime description:text tanggal_approve:datetime user_approve:integer user_add:integer user_edit:integer ip_address:string flag:integer

rails g model Pkdts pkhd:references product:refrences gudang:references keterangan:string qty:decimal satuan:string hpp_fifo:decimal entry_pos_product:integer 

rails g scaffold Gudangs droppoint:refrences nama_gudang:string area_layanan:string kota:string kecamatan:string alamat:text no_telp:string mobile_phone:string contact:string email:string

rails g scaffold WareHouses product:references gudang:refrences qty_in:float qty_out:float open_disc:decimal harga_jual_grosir:integer harga_jual_retail:integer 

rails g scaffold EntryPosts transaksi:string, last_num:integer, format_key:string