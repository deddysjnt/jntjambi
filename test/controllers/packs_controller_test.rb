require 'test_helper'

class PacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pack = packs(:one)
  end

  test "should get index" do
    get packs_url
    assert_response :success
  end

  test "should get new" do
    get new_pack_url
    assert_response :success
  end

  test "should create pack" do
    assert_difference('Pack.count') do
      post packs_url, params: { pack: { agent_tujuan: @pack.agent_tujuan, awb_fisik: @pack.awb_fisik, description: @pack.description, droppoint_id: @pack.droppoint_id, droppoint_tujuan: @pack.droppoint_tujuan, flag: @pack.flag, ip_address: @pack.ip_address, kg_fisik: @pack.kg_fisik, manifest_id: @pack.manifest_id, nomor_bagging: @pack.nomor_bagging, tanggal: @pack.tanggal, tanggal_approve: @pack.tanggal_approve, team_kerja: @pack.team_kerja, team_shift: @pack.team_shift, tujuan: @pack.tujuan, user_add: @pack.user_add, user_approve: @pack.user_approve, user_edit: @pack.user_edit } }
    end

    assert_redirected_to pack_url(Pack.last)
  end

  test "should show pack" do
    get pack_url(@pack)
    assert_response :success
  end

  test "should get edit" do
    get edit_pack_url(@pack)
    assert_response :success
  end

  test "should update pack" do
    patch pack_url(@pack), params: { pack: { agent_tujuan: @pack.agent_tujuan, awb_fisik: @pack.awb_fisik, description: @pack.description, droppoint_id: @pack.droppoint_id, droppoint_tujuan: @pack.droppoint_tujuan, flag: @pack.flag, ip_address: @pack.ip_address, kg_fisik: @pack.kg_fisik, manifest_id: @pack.manifest_id, nomor_bagging: @pack.nomor_bagging, tanggal: @pack.tanggal, tanggal_approve: @pack.tanggal_approve, team_kerja: @pack.team_kerja, team_shift: @pack.team_shift, tujuan: @pack.tujuan, user_add: @pack.user_add, user_approve: @pack.user_approve, user_edit: @pack.user_edit } }
    assert_redirected_to pack_url(@pack)
  end

  test "should destroy pack" do
    assert_difference('Pack.count', -1) do
      delete pack_url(@pack)
    end

    assert_redirected_to packs_url
  end
end
