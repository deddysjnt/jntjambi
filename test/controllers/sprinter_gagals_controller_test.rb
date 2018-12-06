require 'test_helper'

class SprinterGagalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprinter_gagal = sprinter_gagals(:one)
  end

  test "should get index" do
    get sprinter_gagals_url
    assert_response :success
  end

  test "should get new" do
    get new_sprinter_gagal_url
    assert_response :success
  end

  test "should create sprinter_gagal" do
    assert_difference('SprinterGagal.count') do
      post sprinter_gagals_url, params: { sprinter_gagal: { awb: @sprinter_gagal.awb, description: @sprinter_gagal.description, droppoint_id: @sprinter_gagal.droppoint_id, flag: @sprinter_gagal.flag, ip_address: @sprinter_gagal.ip_address, karyawan_id: @sprinter_gagal.karyawan_id, masalah: @sprinter_gagal.masalah, paket: @sprinter_gagal.paket, sprinter_kembali_id: @sprinter_gagal.sprinter_kembali_id, tanggal: @sprinter_gagal.tanggal, tanggal_approve: @sprinter_gagal.tanggal_approve, user_add: @sprinter_gagal.user_add, user_approve: @sprinter_gagal.user_approve, user_edit: @sprinter_gagal.user_edit } }
    end

    assert_redirected_to sprinter_gagal_url(SprinterGagal.last)
  end

  test "should show sprinter_gagal" do
    get sprinter_gagal_url(@sprinter_gagal)
    assert_response :success
  end

  test "should get edit" do
    get edit_sprinter_gagal_url(@sprinter_gagal)
    assert_response :success
  end

  test "should update sprinter_gagal" do
    patch sprinter_gagal_url(@sprinter_gagal), params: { sprinter_gagal: { awb: @sprinter_gagal.awb, description: @sprinter_gagal.description, droppoint_id: @sprinter_gagal.droppoint_id, flag: @sprinter_gagal.flag, ip_address: @sprinter_gagal.ip_address, karyawan_id: @sprinter_gagal.karyawan_id, masalah: @sprinter_gagal.masalah, paket: @sprinter_gagal.paket, sprinter_kembali_id: @sprinter_gagal.sprinter_kembali_id, tanggal: @sprinter_gagal.tanggal, tanggal_approve: @sprinter_gagal.tanggal_approve, user_add: @sprinter_gagal.user_add, user_approve: @sprinter_gagal.user_approve, user_edit: @sprinter_gagal.user_edit } }
    assert_redirected_to sprinter_gagal_url(@sprinter_gagal)
  end

  test "should destroy sprinter_gagal" do
    assert_difference('SprinterGagal.count', -1) do
      delete sprinter_gagal_url(@sprinter_gagal)
    end

    assert_redirected_to sprinter_gagals_url
  end
end
