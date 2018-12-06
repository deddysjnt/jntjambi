require 'test_helper'

class DpoutgoingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dpoutgoing = dpoutgoings(:one)
  end

  test "should get index" do
    get dpoutgoings_url
    assert_response :success
  end

  test "should get new" do
    get new_dpoutgoing_url
    assert_response :success
  end

  test "should create dpoutgoing" do
    assert_difference('Dpoutgoing.count') do
      post dpoutgoings_url, params: { dpoutgoing: { awb_cod_manual: @dpoutgoing.awb_cod_manual, awb_cod_online: @dpoutgoing.awb_cod_online, awb_dfod_manual: @dpoutgoing.awb_dfod_manual, awb_dfod_online: @dpoutgoing.awb_dfod_online, awb_ppcash_manual: @dpoutgoing.awb_ppcash_manual, awb_ppcash_online: @dpoutgoing.awb_ppcash_online, awb_pppm_manual: @dpoutgoing.awb_pppm_manual, awb_pppm_online: @dpoutgoing.awb_pppm_online, awb_total: @dpoutgoing.awb_total, description: @dpoutgoing.description, droppoint_id: @dpoutgoing.droppoint_id, flag: @dpoutgoing.flag, ip_address: @dpoutgoing.ip_address, karyawan_id: @dpoutgoing.karyawan_id, nilai_cod_manual: @dpoutgoing.nilai_cod_manual, nilai_cod_online: @dpoutgoing.nilai_cod_online, nilai_dfod_manual: @dpoutgoing.nilai_dfod_manual, nilai_dfod_online: @dpoutgoing.nilai_dfod_online, nilai_ppcash_manual: @dpoutgoing.nilai_ppcash_manual, nilai_ppcash_online: @dpoutgoing.nilai_ppcash_online, nilai_pppm_manual: @dpoutgoing.nilai_pppm_manual, nilai_pppm_online: @dpoutgoing.nilai_pppm_online, nomor: @dpoutgoing.nomor, perkiraan_id: @dpoutgoing.perkiraan_id, tanggal: @dpoutgoing.tanggal, tanggal_approve: @dpoutgoing.tanggal_approve, transaksi: @dpoutgoing.transaksi, uang_masuk: @dpoutgoing.uang_masuk, user_add: @dpoutgoing.user_add, user_approve: @dpoutgoing.user_approve, user_edit: @dpoutgoing.user_edit } }
    end

    assert_redirected_to dpoutgoing_url(Dpoutgoing.last)
  end

  test "should show dpoutgoing" do
    get dpoutgoing_url(@dpoutgoing)
    assert_response :success
  end

  test "should get edit" do
    get edit_dpoutgoing_url(@dpoutgoing)
    assert_response :success
  end

  test "should update dpoutgoing" do
    patch dpoutgoing_url(@dpoutgoing), params: { dpoutgoing: { awb_cod_manual: @dpoutgoing.awb_cod_manual, awb_cod_online: @dpoutgoing.awb_cod_online, awb_dfod_manual: @dpoutgoing.awb_dfod_manual, awb_dfod_online: @dpoutgoing.awb_dfod_online, awb_ppcash_manual: @dpoutgoing.awb_ppcash_manual, awb_ppcash_online: @dpoutgoing.awb_ppcash_online, awb_pppm_manual: @dpoutgoing.awb_pppm_manual, awb_pppm_online: @dpoutgoing.awb_pppm_online, awb_total: @dpoutgoing.awb_total, description: @dpoutgoing.description, droppoint_id: @dpoutgoing.droppoint_id, flag: @dpoutgoing.flag, ip_address: @dpoutgoing.ip_address, karyawan_id: @dpoutgoing.karyawan_id, nilai_cod_manual: @dpoutgoing.nilai_cod_manual, nilai_cod_online: @dpoutgoing.nilai_cod_online, nilai_dfod_manual: @dpoutgoing.nilai_dfod_manual, nilai_dfod_online: @dpoutgoing.nilai_dfod_online, nilai_ppcash_manual: @dpoutgoing.nilai_ppcash_manual, nilai_ppcash_online: @dpoutgoing.nilai_ppcash_online, nilai_pppm_manual: @dpoutgoing.nilai_pppm_manual, nilai_pppm_online: @dpoutgoing.nilai_pppm_online, nomor: @dpoutgoing.nomor, perkiraan_id: @dpoutgoing.perkiraan_id, tanggal: @dpoutgoing.tanggal, tanggal_approve: @dpoutgoing.tanggal_approve, transaksi: @dpoutgoing.transaksi, uang_masuk: @dpoutgoing.uang_masuk, user_add: @dpoutgoing.user_add, user_approve: @dpoutgoing.user_approve, user_edit: @dpoutgoing.user_edit } }
    assert_redirected_to dpoutgoing_url(@dpoutgoing)
  end

  test "should destroy dpoutgoing" do
    assert_difference('Dpoutgoing.count', -1) do
      delete dpoutgoing_url(@dpoutgoing)
    end

    assert_redirected_to dpoutgoings_url
  end
end
