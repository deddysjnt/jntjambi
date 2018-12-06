require 'test_helper'

class WareHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ware_house = ware_houses(:one)
  end

  test "should get index" do
    get ware_houses_url
    assert_response :success
  end

  test "should get new" do
    get new_ware_house_url
    assert_response :success
  end

  test "should create ware_house" do
    assert_difference('WareHouse.count') do
      post ware_houses_url, params: { ware_house: { gudang: @ware_house.gudang, harga_jual_grosir: @ware_house.harga_jual_grosir, harga_jual_retail: @ware_house.harga_jual_retail, open_disc: @ware_house.open_disc, product: @ware_house.product, qty_in: @ware_house.qty_in, qty_out: @ware_house.qty_out } }
    end

    assert_redirected_to ware_house_url(WareHouse.last)
  end

  test "should show ware_house" do
    get ware_house_url(@ware_house)
    assert_response :success
  end

  test "should get edit" do
    get edit_ware_house_url(@ware_house)
    assert_response :success
  end

  test "should update ware_house" do
    patch ware_house_url(@ware_house), params: { ware_house: { gudang: @ware_house.gudang, harga_jual_grosir: @ware_house.harga_jual_grosir, harga_jual_retail: @ware_house.harga_jual_retail, open_disc: @ware_house.open_disc, product: @ware_house.product, qty_in: @ware_house.qty_in, qty_out: @ware_house.qty_out } }
    assert_redirected_to ware_house_url(@ware_house)
  end

  test "should destroy ware_house" do
    assert_difference('WareHouse.count', -1) do
      delete ware_house_url(@ware_house)
    end

    assert_redirected_to ware_houses_url
  end
end
