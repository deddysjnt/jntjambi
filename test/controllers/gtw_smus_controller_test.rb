require 'test_helper'

class GtwSmusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gtw_smu = gtw_smus(:one)
  end

  test "should get index" do
    get gtw_smus_url
    assert_response :success
  end

  test "should get new" do
    get new_gtw_smu_url
    assert_response :success
  end

  test "should create gtw_smu" do
    assert_difference('GtwSmu.count') do
      post gtw_smus_url, params: { gtw_smu: { agent_id: @gtw_smu.agent_id, bagging_fisik: @gtw_smu.bagging_fisik, bagging_selisih: @gtw_smu.bagging_selisih, bagging_smu: @gtw_smu.bagging_smu, biaya_koor: @gtw_smu.biaya_koor, biaya_smu: @gtw_smu.biaya_smu, description: @gtw_smu.description, flag: @gtw_smu.flag, ip_address: @gtw_smu.ip_address, kasir_koor: @gtw_smu.kasir_koor, kasir_smu: @gtw_smu.kasir_smu, kegiatan: @gtw_smu.kegiatan, kendaraan_id: @gtw_smu.kendaraan_id, kg_fisik: @gtw_smu.kg_fisik, kg_selisih: @gtw_smu.kg_selisih, kg_smu: @gtw_smu.kg_smu, maskapai: @gtw_smu.maskapai, noref: @gtw_smu.noref, smu_id: @gtw_smu.smu_id, tanggal: @gtw_smu.tanggal, tanggal_approve: @gtw_smu.tanggal_approve, tanggal_estimasi: @gtw_smu.tanggal_estimasi, tanggal_smu: @gtw_smu.tanggal_smu, terms: @gtw_smu.terms, transporter_team: @gtw_smu.transporter_team, user_add: @gtw_smu.user_add, user_approve: @gtw_smu.user_approve, user_edit: @gtw_smu.user_edit } }
    end

    assert_redirected_to gtw_smu_url(GtwSmu.last)
  end

  test "should show gtw_smu" do
    get gtw_smu_url(@gtw_smu)
    assert_response :success
  end

  test "should get edit" do
    get edit_gtw_smu_url(@gtw_smu)
    assert_response :success
  end

  test "should update gtw_smu" do
    patch gtw_smu_url(@gtw_smu), params: { gtw_smu: { agent_id: @gtw_smu.agent_id, bagging_fisik: @gtw_smu.bagging_fisik, bagging_selisih: @gtw_smu.bagging_selisih, bagging_smu: @gtw_smu.bagging_smu, biaya_koor: @gtw_smu.biaya_koor, biaya_smu: @gtw_smu.biaya_smu, description: @gtw_smu.description, flag: @gtw_smu.flag, ip_address: @gtw_smu.ip_address, kasir_koor: @gtw_smu.kasir_koor, kasir_smu: @gtw_smu.kasir_smu, kegiatan: @gtw_smu.kegiatan, kendaraan_id: @gtw_smu.kendaraan_id, kg_fisik: @gtw_smu.kg_fisik, kg_selisih: @gtw_smu.kg_selisih, kg_smu: @gtw_smu.kg_smu, maskapai: @gtw_smu.maskapai, noref: @gtw_smu.noref, smu_id: @gtw_smu.smu_id, tanggal: @gtw_smu.tanggal, tanggal_approve: @gtw_smu.tanggal_approve, tanggal_estimasi: @gtw_smu.tanggal_estimasi, tanggal_smu: @gtw_smu.tanggal_smu, terms: @gtw_smu.terms, transporter_team: @gtw_smu.transporter_team, user_add: @gtw_smu.user_add, user_approve: @gtw_smu.user_approve, user_edit: @gtw_smu.user_edit } }
    assert_redirected_to gtw_smu_url(@gtw_smu)
  end

  test "should destroy gtw_smu" do
    assert_difference('GtwSmu.count', -1) do
      delete gtw_smu_url(@gtw_smu)
    end

    assert_redirected_to gtw_smus_url
  end
end
