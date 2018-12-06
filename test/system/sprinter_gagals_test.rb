require "application_system_test_case"

class SprinterGagalsTest < ApplicationSystemTestCase
  setup do
    @sprinter_gagal = sprinter_gagals(:one)
  end

  test "visiting the index" do
    visit sprinter_gagals_url
    assert_selector "h1", text: "Sprinter Gagals"
  end

  test "creating a Sprinter gagal" do
    visit sprinter_gagals_url
    click_on "New Sprinter Gagal"

    fill_in "Awb", with: @sprinter_gagal.awb
    fill_in "Description", with: @sprinter_gagal.description
    fill_in "Droppoint", with: @sprinter_gagal.droppoint_id
    fill_in "Flag", with: @sprinter_gagal.flag
    fill_in "Ip Address", with: @sprinter_gagal.ip_address
    fill_in "Karyawan", with: @sprinter_gagal.karyawan_id
    fill_in "Masalah", with: @sprinter_gagal.masalah
    fill_in "Paket", with: @sprinter_gagal.paket
    fill_in "Sprinter Kembali", with: @sprinter_gagal.sprinter_kembali_id
    fill_in "Tanggal", with: @sprinter_gagal.tanggal
    fill_in "Tanggal Approve", with: @sprinter_gagal.tanggal_approve
    fill_in "User Add", with: @sprinter_gagal.user_add
    fill_in "User Approve", with: @sprinter_gagal.user_approve
    fill_in "User Edit", with: @sprinter_gagal.user_edit
    click_on "Create Sprinter gagal"

    assert_text "Sprinter gagal was successfully created"
    click_on "Back"
  end

  test "updating a Sprinter gagal" do
    visit sprinter_gagals_url
    click_on "Edit", match: :first

    fill_in "Awb", with: @sprinter_gagal.awb
    fill_in "Description", with: @sprinter_gagal.description
    fill_in "Droppoint", with: @sprinter_gagal.droppoint_id
    fill_in "Flag", with: @sprinter_gagal.flag
    fill_in "Ip Address", with: @sprinter_gagal.ip_address
    fill_in "Karyawan", with: @sprinter_gagal.karyawan_id
    fill_in "Masalah", with: @sprinter_gagal.masalah
    fill_in "Paket", with: @sprinter_gagal.paket
    fill_in "Sprinter Kembali", with: @sprinter_gagal.sprinter_kembali_id
    fill_in "Tanggal", with: @sprinter_gagal.tanggal
    fill_in "Tanggal Approve", with: @sprinter_gagal.tanggal_approve
    fill_in "User Add", with: @sprinter_gagal.user_add
    fill_in "User Approve", with: @sprinter_gagal.user_approve
    fill_in "User Edit", with: @sprinter_gagal.user_edit
    click_on "Update Sprinter gagal"

    assert_text "Sprinter gagal was successfully updated"
    click_on "Back"
  end

  test "destroying a Sprinter gagal" do
    visit sprinter_gagals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sprinter gagal was successfully destroyed"
  end
end
