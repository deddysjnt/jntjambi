require 'test_helper'

class PkhdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pkhd = pkhds(:one)
  end

  test "should get index" do
    get pkhds_url
    assert_response :success
  end

  test "should get new" do
    get new_pkhd_url
    assert_response :success
  end

  test "should create pkhd" do
    assert_difference('Pkhd.count') do
      post pkhds_url, params: { pkhd: { description: @pkhd.description, droppoint: @pkhd.droppoint, flag: @pkhd.flag, ip_address: @pkhd.ip_address, no_ref: @pkhd.no_ref, nomor: @pkhd.nomor, tanggal: @pkhd.tanggal, tanggal_approve: @pkhd.tanggal_approve, user_add: @pkhd.user_add, user_approve: @pkhd.user_approve, user_edit: @pkhd.user_edit } }
    end

    assert_redirected_to pkhd_url(Pkhd.last)
  end

  test "should show pkhd" do
    get pkhd_url(@pkhd)
    assert_response :success
  end

  test "should get edit" do
    get edit_pkhd_url(@pkhd)
    assert_response :success
  end

  test "should update pkhd" do
    patch pkhd_url(@pkhd), params: { pkhd: { description: @pkhd.description, droppoint: @pkhd.droppoint, flag: @pkhd.flag, ip_address: @pkhd.ip_address, no_ref: @pkhd.no_ref, nomor: @pkhd.nomor, tanggal: @pkhd.tanggal, tanggal_approve: @pkhd.tanggal_approve, user_add: @pkhd.user_add, user_approve: @pkhd.user_approve, user_edit: @pkhd.user_edit } }
    assert_redirected_to pkhd_url(@pkhd)
  end

  test "should destroy pkhd" do
    assert_difference('Pkhd.count', -1) do
      delete pkhd_url(@pkhd)
    end

    assert_redirected_to pkhds_url
  end
end
