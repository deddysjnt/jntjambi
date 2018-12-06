require 'test_helper'

class GudangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gudang = gudangs(:one)
  end

  test "should get index" do
    get gudangs_url
    assert_response :success
  end

  test "should get new" do
    get new_gudang_url
    assert_response :success
  end

  test "should create gudang" do
    assert_difference('Gudang.count') do
      post gudangs_url, params: { gudang: { alamat: @gudang.alamat, area_layanan: @gudang.area_layanan, contact: @gudang.contact, droppoint: @gudang.droppoint, email: @gudang.email, kecamatan: @gudang.kecamatan, kota: @gudang.kota, mobile_phone: @gudang.mobile_phone, nama_gudang: @gudang.nama_gudang, no_telp: @gudang.no_telp } }
    end

    assert_redirected_to gudang_url(Gudang.last)
  end

  test "should show gudang" do
    get gudang_url(@gudang)
    assert_response :success
  end

  test "should get edit" do
    get edit_gudang_url(@gudang)
    assert_response :success
  end

  test "should update gudang" do
    patch gudang_url(@gudang), params: { gudang: { alamat: @gudang.alamat, area_layanan: @gudang.area_layanan, contact: @gudang.contact, droppoint: @gudang.droppoint, email: @gudang.email, kecamatan: @gudang.kecamatan, kota: @gudang.kota, mobile_phone: @gudang.mobile_phone, nama_gudang: @gudang.nama_gudang, no_telp: @gudang.no_telp } }
    assert_redirected_to gudang_url(@gudang)
  end

  test "should destroy gudang" do
    assert_difference('Gudang.count', -1) do
      delete gudang_url(@gudang)
    end

    assert_redirected_to gudangs_url
  end
end
