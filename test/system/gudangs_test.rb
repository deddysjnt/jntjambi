require "application_system_test_case"

class GudangsTest < ApplicationSystemTestCase
  setup do
    @gudang = gudangs(:one)
  end

  test "visiting the index" do
    visit gudangs_url
    assert_selector "h1", text: "Gudangs"
  end

  test "creating a Gudang" do
    visit gudangs_url
    click_on "New Gudang"

    fill_in "Alamat", with: @gudang.alamat
    fill_in "Area Layanan", with: @gudang.area_layanan
    fill_in "Contact", with: @gudang.contact
    fill_in "Droppoint", with: @gudang.droppoint
    fill_in "Email", with: @gudang.email
    fill_in "Kecamatan", with: @gudang.kecamatan
    fill_in "Kota", with: @gudang.kota
    fill_in "Mobile Phone", with: @gudang.mobile_phone
    fill_in "Nama Gudang", with: @gudang.nama_gudang
    fill_in "No Telp", with: @gudang.no_telp
    click_on "Create Gudang"

    assert_text "Gudang was successfully created"
    click_on "Back"
  end

  test "updating a Gudang" do
    visit gudangs_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @gudang.alamat
    fill_in "Area Layanan", with: @gudang.area_layanan
    fill_in "Contact", with: @gudang.contact
    fill_in "Droppoint", with: @gudang.droppoint
    fill_in "Email", with: @gudang.email
    fill_in "Kecamatan", with: @gudang.kecamatan
    fill_in "Kota", with: @gudang.kota
    fill_in "Mobile Phone", with: @gudang.mobile_phone
    fill_in "Nama Gudang", with: @gudang.nama_gudang
    fill_in "No Telp", with: @gudang.no_telp
    click_on "Update Gudang"

    assert_text "Gudang was successfully updated"
    click_on "Back"
  end

  test "destroying a Gudang" do
    visit gudangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gudang was successfully destroyed"
  end
end
