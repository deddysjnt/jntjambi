require "application_system_test_case"

class WareHousesTest < ApplicationSystemTestCase
  setup do
    @ware_house = ware_houses(:one)
  end

  test "visiting the index" do
    visit ware_houses_url
    assert_selector "h1", text: "Ware Houses"
  end

  test "creating a Ware house" do
    visit ware_houses_url
    click_on "New Ware House"

    fill_in "Gudang", with: @ware_house.gudang
    fill_in "Harga Jual Grosir", with: @ware_house.harga_jual_grosir
    fill_in "Harga Jual Retail", with: @ware_house.harga_jual_retail
    fill_in "Open Disc", with: @ware_house.open_disc
    fill_in "Product", with: @ware_house.product
    fill_in "Qty In", with: @ware_house.qty_in
    fill_in "Qty Out", with: @ware_house.qty_out
    click_on "Create Ware house"

    assert_text "Ware house was successfully created"
    click_on "Back"
  end

  test "updating a Ware house" do
    visit ware_houses_url
    click_on "Edit", match: :first

    fill_in "Gudang", with: @ware_house.gudang
    fill_in "Harga Jual Grosir", with: @ware_house.harga_jual_grosir
    fill_in "Harga Jual Retail", with: @ware_house.harga_jual_retail
    fill_in "Open Disc", with: @ware_house.open_disc
    fill_in "Product", with: @ware_house.product
    fill_in "Qty In", with: @ware_house.qty_in
    fill_in "Qty Out", with: @ware_house.qty_out
    click_on "Update Ware house"

    assert_text "Ware house was successfully updated"
    click_on "Back"
  end

  test "destroying a Ware house" do
    visit ware_houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ware house was successfully destroyed"
  end
end
