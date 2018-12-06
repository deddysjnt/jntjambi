require "application_system_test_case"

class UnpacksTest < ApplicationSystemTestCase
  setup do
    @unpack = unpacks(:one)
  end

  test "visiting the index" do
    visit unpacks_url
    assert_selector "h1", text: "Unpacks"
  end

  test "creating a Unpack" do
    visit unpacks_url
    click_on "New Unpack"

    fill_in "Agent Asal", with: @unpack.agent_asal
    fill_in "Awb E3", with: @unpack.awb_e3
    fill_in "Awb Fisik", with: @unpack.awb_fisik
    fill_in "Description", with: @unpack.description
    fill_in "Droppoint Asal", with: @unpack.droppoint_asal
    fill_in "Droppoint", with: @unpack.droppoint_id
    fill_in "Flag", with: @unpack.flag
    fill_in "Fresh Paket", with: @unpack.fresh_paket
    fill_in "Ip Address", with: @unpack.ip_address
    fill_in "Kg E3", with: @unpack.kg_e3
    fill_in "Kg Fisik", with: @unpack.kg_fisik
    fill_in "Manifest", with: @unpack.manifest_id
    fill_in "Nomor Bagging", with: @unpack.nomor_bagging
    fill_in "Nomor Smu", with: @unpack.nomor_smu
    fill_in "Sumber", with: @unpack.sumber
    fill_in "Tanggal", with: @unpack.tanggal
    fill_in "Tanggal Approve", with: @unpack.tanggal_approve
    fill_in "Team Kerja", with: @unpack.team_kerja
    fill_in "Team Shift", with: @unpack.team_shift
    fill_in "User Add", with: @unpack.user_add
    fill_in "User Approve", with: @unpack.user_approve
    fill_in "User Edit", with: @unpack.user_edit
    click_on "Create Unpack"

    assert_text "Unpack was successfully created"
    click_on "Back"
  end

  test "updating a Unpack" do
    visit unpacks_url
    click_on "Edit", match: :first

    fill_in "Agent Asal", with: @unpack.agent_asal
    fill_in "Awb E3", with: @unpack.awb_e3
    fill_in "Awb Fisik", with: @unpack.awb_fisik
    fill_in "Description", with: @unpack.description
    fill_in "Droppoint Asal", with: @unpack.droppoint_asal
    fill_in "Droppoint", with: @unpack.droppoint_id
    fill_in "Flag", with: @unpack.flag
    fill_in "Fresh Paket", with: @unpack.fresh_paket
    fill_in "Ip Address", with: @unpack.ip_address
    fill_in "Kg E3", with: @unpack.kg_e3
    fill_in "Kg Fisik", with: @unpack.kg_fisik
    fill_in "Manifest", with: @unpack.manifest_id
    fill_in "Nomor Bagging", with: @unpack.nomor_bagging
    fill_in "Nomor Smu", with: @unpack.nomor_smu
    fill_in "Sumber", with: @unpack.sumber
    fill_in "Tanggal", with: @unpack.tanggal
    fill_in "Tanggal Approve", with: @unpack.tanggal_approve
    fill_in "Team Kerja", with: @unpack.team_kerja
    fill_in "Team Shift", with: @unpack.team_shift
    fill_in "User Add", with: @unpack.user_add
    fill_in "User Approve", with: @unpack.user_approve
    fill_in "User Edit", with: @unpack.user_edit
    click_on "Update Unpack"

    assert_text "Unpack was successfully updated"
    click_on "Back"
  end

  test "destroying a Unpack" do
    visit unpacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unpack was successfully destroyed"
  end
end
