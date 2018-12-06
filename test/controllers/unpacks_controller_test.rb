require 'test_helper'

class UnpacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unpack = unpacks(:one)
  end

  test "should get index" do
    get unpacks_url
    assert_response :success
  end

  test "should get new" do
    get new_unpack_url
    assert_response :success
  end

  test "should create unpack" do
    assert_difference('Unpack.count') do
      post unpacks_url, params: { unpack: { agent_asal: @unpack.agent_asal, awb_e3: @unpack.awb_e3, awb_fisik: @unpack.awb_fisik, description: @unpack.description, droppoint_asal: @unpack.droppoint_asal, droppoint_id: @unpack.droppoint_id, flag: @unpack.flag, fresh_paket: @unpack.fresh_paket, ip_address: @unpack.ip_address, kg_e3: @unpack.kg_e3, kg_fisik: @unpack.kg_fisik, manifest_id: @unpack.manifest_id, nomor_bagging: @unpack.nomor_bagging, nomor_smu: @unpack.nomor_smu, sumber: @unpack.sumber, tanggal: @unpack.tanggal, tanggal_approve: @unpack.tanggal_approve, team_kerja: @unpack.team_kerja, team_shift: @unpack.team_shift, user_add: @unpack.user_add, user_approve: @unpack.user_approve, user_edit: @unpack.user_edit } }
    end

    assert_redirected_to unpack_url(Unpack.last)
  end

  test "should show unpack" do
    get unpack_url(@unpack)
    assert_response :success
  end

  test "should get edit" do
    get edit_unpack_url(@unpack)
    assert_response :success
  end

  test "should update unpack" do
    patch unpack_url(@unpack), params: { unpack: { agent_asal: @unpack.agent_asal, awb_e3: @unpack.awb_e3, awb_fisik: @unpack.awb_fisik, description: @unpack.description, droppoint_asal: @unpack.droppoint_asal, droppoint_id: @unpack.droppoint_id, flag: @unpack.flag, fresh_paket: @unpack.fresh_paket, ip_address: @unpack.ip_address, kg_e3: @unpack.kg_e3, kg_fisik: @unpack.kg_fisik, manifest_id: @unpack.manifest_id, nomor_bagging: @unpack.nomor_bagging, nomor_smu: @unpack.nomor_smu, sumber: @unpack.sumber, tanggal: @unpack.tanggal, tanggal_approve: @unpack.tanggal_approve, team_kerja: @unpack.team_kerja, team_shift: @unpack.team_shift, user_add: @unpack.user_add, user_approve: @unpack.user_approve, user_edit: @unpack.user_edit } }
    assert_redirected_to unpack_url(@unpack)
  end

  test "should destroy unpack" do
    assert_difference('Unpack.count', -1) do
      delete unpack_url(@unpack)
    end

    assert_redirected_to unpacks_url
  end
end
