require 'test_helper'

class GtwStmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gtw_stmp = gtw_stmps(:one)
  end

  test "should get index" do
    get gtw_stmps_url
    assert_response :success
  end

  test "should get new" do
    get new_gtw_stmp_url
    assert_response :success
  end

  test "should create gtw_stmp" do
    assert_difference('GtwStmp.count') do
      post gtw_stmps_url, params: { gtw_stmp: { agent_id: @gtw_stmp.agent_id, awb_fisik: @gtw_stmp.awb_fisik, awb_manifest: @gtw_stmp.awb_manifest, description: @gtw_stmp.description, diserahkan_oleh: @gtw_stmp.diserahkan_oleh, diterima_dari: @gtw_stmp.diterima_dari, droppoint_id: @gtw_stmp.droppoint_id, flag: @gtw_stmp.flag, fresh_paket: @gtw_stmp.fresh_paket, gtw_team_kerja: @gtw_stmp.gtw_team_kerja, gtw_team_shift: @gtw_stmp.gtw_team_shift, ip_address: @gtw_stmp.ip_address, kegiatan: @gtw_stmp.kegiatan, kendaraan_id: @gtw_stmp.kendaraan_id, kg_fisik: @gtw_stmp.kg_fisik, kg_manisfet: @gtw_stmp.kg_manisfet, manifest_id: @gtw_stmp.manifest_id, noref: @gtw_stmp.noref, qty_bagging_fisik: @gtw_stmp.qty_bagging_fisik, qty_bagging_manifest: @gtw_stmp.qty_bagging_manifest, selisih_awb: @gtw_stmp.selisih_awb, selisih_bagging: @gtw_stmp.selisih_bagging, selisih_kg: @gtw_stmp.selisih_kg, tanggal: @gtw_stmp.tanggal, tanggal_approve: @gtw_stmp.tanggal_approve, transporter_team: @gtw_stmp.transporter_team, user_add: @gtw_stmp.user_add, user_approve: @gtw_stmp.user_approve, user_edit: @gtw_stmp.user_edit } }
    end

    assert_redirected_to gtw_stmp_url(GtwStmp.last)
  end

  test "should show gtw_stmp" do
    get gtw_stmp_url(@gtw_stmp)
    assert_response :success
  end

  test "should get edit" do
    get edit_gtw_stmp_url(@gtw_stmp)
    assert_response :success
  end

  test "should update gtw_stmp" do
    patch gtw_stmp_url(@gtw_stmp), params: { gtw_stmp: { agent_id: @gtw_stmp.agent_id, awb_fisik: @gtw_stmp.awb_fisik, awb_manifest: @gtw_stmp.awb_manifest, description: @gtw_stmp.description, diserahkan_oleh: @gtw_stmp.diserahkan_oleh, diterima_dari: @gtw_stmp.diterima_dari, droppoint_id: @gtw_stmp.droppoint_id, flag: @gtw_stmp.flag, fresh_paket: @gtw_stmp.fresh_paket, gtw_team_kerja: @gtw_stmp.gtw_team_kerja, gtw_team_shift: @gtw_stmp.gtw_team_shift, ip_address: @gtw_stmp.ip_address, kegiatan: @gtw_stmp.kegiatan, kendaraan_id: @gtw_stmp.kendaraan_id, kg_fisik: @gtw_stmp.kg_fisik, kg_manisfet: @gtw_stmp.kg_manisfet, manifest_id: @gtw_stmp.manifest_id, noref: @gtw_stmp.noref, qty_bagging_fisik: @gtw_stmp.qty_bagging_fisik, qty_bagging_manifest: @gtw_stmp.qty_bagging_manifest, selisih_awb: @gtw_stmp.selisih_awb, selisih_bagging: @gtw_stmp.selisih_bagging, selisih_kg: @gtw_stmp.selisih_kg, tanggal: @gtw_stmp.tanggal, tanggal_approve: @gtw_stmp.tanggal_approve, transporter_team: @gtw_stmp.transporter_team, user_add: @gtw_stmp.user_add, user_approve: @gtw_stmp.user_approve, user_edit: @gtw_stmp.user_edit } }
    assert_redirected_to gtw_stmp_url(@gtw_stmp)
  end

  test "should destroy gtw_stmp" do
    assert_difference('GtwStmp.count', -1) do
      delete gtw_stmp_url(@gtw_stmp)
    end

    assert_redirected_to gtw_stmps_url
  end
end
