require 'test_helper'

class Prod1ControllerTest < ActionDispatch::IntegrationTest
  test "should get nama_barang" do
    get prod1_nama_barang_url
    assert_response :success
  end

  test "should get barcode" do
    get prod1_barcode_url
    assert_response :success
  end

  test "should get tipe:integer" do
    get prod1_tipe:integer_url
    assert_response :success
  end

end
