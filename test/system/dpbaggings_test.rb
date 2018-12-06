require "application_system_test_case"

class DpbaggingsTest < ApplicationSystemTestCase
  setup do
    @dpbagging = dpbaggings(:one)
  end

  test "visiting the index" do
    visit dpbaggings_url
    assert_selector "h1", text: "Dpbaggings"
  end

  test "creating a Dpbagging" do
    visit dpbaggings_url
    click_on "New Dpbagging"

    fill_in "Awb Asal", with: @dpbagging.awb_asal
    fill_in "Awb Terima", with: @dpbagging.awb_terima
    fill_in "Bagging", with: @dpbagging.bagging_id
    fill_in "Description", with: @dpbagging.description
    fill_in "Droppoint Asal", with: @dpbagging.droppoint_asal
    fill_in "Droppoint Terima", with: @dpbagging.droppoint_terima
    fill_in "Flag", with: @dpbagging.flag
    fill_in "Fresh Paket", with: @dpbagging.fresh_paket
    fill_in "Ip Address", with: @dpbagging.ip_address
    fill_in "Kegiatan", with: @dpbagging.kegiatan
    fill_in "Kg Asal", with: @dpbagging.kg_asal
    fill_in "Kg Terima", with: @dpbagging.kg_terima
    fill_in "Manifest", with: @dpbagging.manifest_id
    fill_in "Noref", with: @dpbagging.noref
    fill_in "Selisih Awb", with: @dpbagging.selisih_awb
    fill_in "Selisih Kg", with: @dpbagging.selisih_kg
    fill_in "Tanggal", with: @dpbagging.tanggal
    fill_in "Tanggal Approve", with: @dpbagging.tanggal_approve
    fill_in "Tanggal Kirim", with: @dpbagging.tanggal_kirim
    fill_in "Tanggal Terima", with: @dpbagging.tanggal_terima
    fill_in "User Add", with: @dpbagging.user_add
    fill_in "User Approve", with: @dpbagging.user_approve
    fill_in "User Edit", with: @dpbagging.user_edit
    click_on "Create Dpbagging"

    assert_text "Dpbagging was successfully created"
    click_on "Back"
  end

  test "updating a Dpbagging" do
    visit dpbaggings_url
    click_on "Edit", match: :first

    fill_in "Awb Asal", with: @dpbagging.awb_asal
    fill_in "Awb Terima", with: @dpbagging.awb_terima
    fill_in "Bagging", with: @dpbagging.bagging_id
    fill_in "Description", with: @dpbagging.description
    fill_in "Droppoint Asal", with: @dpbagging.droppoint_asal
    fill_in "Droppoint Terima", with: @dpbagging.droppoint_terima
    fill_in "Flag", with: @dpbagging.flag
    fill_in "Fresh Paket", with: @dpbagging.fresh_paket
    fill_in "Ip Address", with: @dpbagging.ip_address
    fill_in "Kegiatan", with: @dpbagging.kegiatan
    fill_in "Kg Asal", with: @dpbagging.kg_asal
    fill_in "Kg Terima", with: @dpbagging.kg_terima
    fill_in "Manifest", with: @dpbagging.manifest_id
    fill_in "Noref", with: @dpbagging.noref
    fill_in "Selisih Awb", with: @dpbagging.selisih_awb
    fill_in "Selisih Kg", with: @dpbagging.selisih_kg
    fill_in "Tanggal", with: @dpbagging.tanggal
    fill_in "Tanggal Approve", with: @dpbagging.tanggal_approve
    fill_in "Tanggal Kirim", with: @dpbagging.tanggal_kirim
    fill_in "Tanggal Terima", with: @dpbagging.tanggal_terima
    fill_in "User Add", with: @dpbagging.user_add
    fill_in "User Approve", with: @dpbagging.user_approve
    fill_in "User Edit", with: @dpbagging.user_edit
    click_on "Update Dpbagging"

    assert_text "Dpbagging was successfully updated"
    click_on "Back"
  end

  test "destroying a Dpbagging" do
    visit dpbaggings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dpbagging was successfully destroyed"
  end
end
