require 'test_helper'

class DpbaggingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dpbagging = dpbaggings(:one)
  end

  test "should get index" do
    get dpbaggings_url
    assert_response :success
  end

  test "should get new" do
    get new_dpbagging_url
    assert_response :success
  end

  test "should create dpbagging" do
    assert_difference('Dpbagging.count') do
      post dpbaggings_url, params: { dpbagging: { awb_asal: @dpbagging.awb_asal, awb_terima: @dpbagging.awb_terima, bagging_id: @dpbagging.bagging_id, description: @dpbagging.description, droppoint_asal: @dpbagging.droppoint_asal, droppoint_terima: @dpbagging.droppoint_terima, flag: @dpbagging.flag, fresh_paket: @dpbagging.fresh_paket, ip_address: @dpbagging.ip_address, kegiatan: @dpbagging.kegiatan, kg_asal: @dpbagging.kg_asal, kg_terima: @dpbagging.kg_terima, manifest_id: @dpbagging.manifest_id, noref: @dpbagging.noref, selisih_awb: @dpbagging.selisih_awb, selisih_kg: @dpbagging.selisih_kg, tanggal: @dpbagging.tanggal, tanggal_approve: @dpbagging.tanggal_approve, tanggal_kirim: @dpbagging.tanggal_kirim, tanggal_terima: @dpbagging.tanggal_terima, user_add: @dpbagging.user_add, user_approve: @dpbagging.user_approve, user_edit: @dpbagging.user_edit } }
    end

    assert_redirected_to dpbagging_url(Dpbagging.last)
  end

  test "should show dpbagging" do
    get dpbagging_url(@dpbagging)
    assert_response :success
  end

  test "should get edit" do
    get edit_dpbagging_url(@dpbagging)
    assert_response :success
  end

  test "should update dpbagging" do
    patch dpbagging_url(@dpbagging), params: { dpbagging: { awb_asal: @dpbagging.awb_asal, awb_terima: @dpbagging.awb_terima, bagging_id: @dpbagging.bagging_id, description: @dpbagging.description, droppoint_asal: @dpbagging.droppoint_asal, droppoint_terima: @dpbagging.droppoint_terima, flag: @dpbagging.flag, fresh_paket: @dpbagging.fresh_paket, ip_address: @dpbagging.ip_address, kegiatan: @dpbagging.kegiatan, kg_asal: @dpbagging.kg_asal, kg_terima: @dpbagging.kg_terima, manifest_id: @dpbagging.manifest_id, noref: @dpbagging.noref, selisih_awb: @dpbagging.selisih_awb, selisih_kg: @dpbagging.selisih_kg, tanggal: @dpbagging.tanggal, tanggal_approve: @dpbagging.tanggal_approve, tanggal_kirim: @dpbagging.tanggal_kirim, tanggal_terima: @dpbagging.tanggal_terima, user_add: @dpbagging.user_add, user_approve: @dpbagging.user_approve, user_edit: @dpbagging.user_edit } }
    assert_redirected_to dpbagging_url(@dpbagging)
  end

  test "should destroy dpbagging" do
    assert_difference('Dpbagging.count', -1) do
      delete dpbagging_url(@dpbagging)
    end

    assert_redirected_to dpbaggings_url
  end
end
