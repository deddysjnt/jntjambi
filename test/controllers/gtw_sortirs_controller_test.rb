require 'test_helper'

class GtwSortirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gtw_sortir = gtw_sortirs(:one)
  end

  test "should get index" do
    get gtw_sortirs_url
    assert_response :success
  end

  test "should get new" do
    get new_gtw_sortir_url
    assert_response :success
  end

  test "should create gtw_sortir" do
    assert_difference('GtwSortir.count') do
      post gtw_sortirs_url, params: { gtw_sortir: { agent_id: @gtw_sortir.agent_id, awb_dp: @gtw_sortir.awb_dp, awb_e3: @gtw_sortir.awb_e3, awb_gtw: @gtw_sortir.awb_gtw, awb_selisih_dp: @gtw_sortir.awb_selisih_dp, awb_selisih_e3: @gtw_sortir.awb_selisih_e3, bagging_id: @gtw_sortir.bagging_id, description: @gtw_sortir.description, droppoint_asal: @gtw_sortir.droppoint_asal, droppoint_tujuan: @gtw_sortir.droppoint_tujuan, flag: @gtw_sortir.flag, fresh_paket: @gtw_sortir.fresh_paket, gtw_team_kerja: @gtw_sortir.gtw_team_kerja, gtw_team_shift: @gtw_sortir.gtw_team_shift, ip_address: @gtw_sortir.ip_address, kegiatan: @gtw_sortir.kegiatan, kg_dp: @gtw_sortir.kg_dp, kg_e3: @gtw_sortir.kg_e3, kg_gtw: @gtw_sortir.kg_gtw, kg_selisih_dp: @gtw_sortir.kg_selisih_dp, kg_selisih_e3: @gtw_sortir.kg_selisih_e3, manifest_id: @gtw_sortir.manifest_id, tanggal: @gtw_sortir.tanggal, tanggal_approve: @gtw_sortir.tanggal_approve, tanggal_dp: @gtw_sortir.tanggal_dp, user_add: @gtw_sortir.user_add, user_approve: @gtw_sortir.user_approve, user_edit: @gtw_sortir.user_edit } }
    end

    assert_redirected_to gtw_sortir_url(GtwSortir.last)
  end

  test "should show gtw_sortir" do
    get gtw_sortir_url(@gtw_sortir)
    assert_response :success
  end

  test "should get edit" do
    get edit_gtw_sortir_url(@gtw_sortir)
    assert_response :success
  end

  test "should update gtw_sortir" do
    patch gtw_sortir_url(@gtw_sortir), params: { gtw_sortir: { agent_id: @gtw_sortir.agent_id, awb_dp: @gtw_sortir.awb_dp, awb_e3: @gtw_sortir.awb_e3, awb_gtw: @gtw_sortir.awb_gtw, awb_selisih_dp: @gtw_sortir.awb_selisih_dp, awb_selisih_e3: @gtw_sortir.awb_selisih_e3, bagging_id: @gtw_sortir.bagging_id, description: @gtw_sortir.description, droppoint_asal: @gtw_sortir.droppoint_asal, droppoint_tujuan: @gtw_sortir.droppoint_tujuan, flag: @gtw_sortir.flag, fresh_paket: @gtw_sortir.fresh_paket, gtw_team_kerja: @gtw_sortir.gtw_team_kerja, gtw_team_shift: @gtw_sortir.gtw_team_shift, ip_address: @gtw_sortir.ip_address, kegiatan: @gtw_sortir.kegiatan, kg_dp: @gtw_sortir.kg_dp, kg_e3: @gtw_sortir.kg_e3, kg_gtw: @gtw_sortir.kg_gtw, kg_selisih_dp: @gtw_sortir.kg_selisih_dp, kg_selisih_e3: @gtw_sortir.kg_selisih_e3, manifest_id: @gtw_sortir.manifest_id, tanggal: @gtw_sortir.tanggal, tanggal_approve: @gtw_sortir.tanggal_approve, tanggal_dp: @gtw_sortir.tanggal_dp, user_add: @gtw_sortir.user_add, user_approve: @gtw_sortir.user_approve, user_edit: @gtw_sortir.user_edit } }
    assert_redirected_to gtw_sortir_url(@gtw_sortir)
  end

  test "should destroy gtw_sortir" do
    assert_difference('GtwSortir.count', -1) do
      delete gtw_sortir_url(@gtw_sortir)
    end

    assert_redirected_to gtw_sortirs_url
  end
end
