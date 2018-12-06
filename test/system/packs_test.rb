require "application_system_test_case"

class PacksTest < ApplicationSystemTestCase
  setup do
    @pack = packs(:one)
  end

  test "visiting the index" do
    visit packs_url
    assert_selector "h1", text: "Packs"
  end

  test "creating a Pack" do
    visit packs_url
    click_on "New Pack"

    fill_in "Agent Tujuan", with: @pack.agent_tujuan
    fill_in "Awb Fisik", with: @pack.awb_fisik
    fill_in "Description", with: @pack.description
    fill_in "Droppoint", with: @pack.droppoint_id
    fill_in "Droppoint Tujuan", with: @pack.droppoint_tujuan
    fill_in "Flag", with: @pack.flag
    fill_in "Ip Address", with: @pack.ip_address
    fill_in "Kg Fisik", with: @pack.kg_fisik
    fill_in "Manifest", with: @pack.manifest_id
    fill_in "Nomor Bagging", with: @pack.nomor_bagging
    fill_in "Tanggal", with: @pack.tanggal
    fill_in "Tanggal Approve", with: @pack.tanggal_approve
    fill_in "Team Kerja", with: @pack.team_kerja
    fill_in "Team Shift", with: @pack.team_shift
    fill_in "Tujuan", with: @pack.tujuan
    fill_in "User Add", with: @pack.user_add
    fill_in "User Approve", with: @pack.user_approve
    fill_in "User Edit", with: @pack.user_edit
    click_on "Create Pack"

    assert_text "Pack was successfully created"
    click_on "Back"
  end

  test "updating a Pack" do
    visit packs_url
    click_on "Edit", match: :first

    fill_in "Agent Tujuan", with: @pack.agent_tujuan
    fill_in "Awb Fisik", with: @pack.awb_fisik
    fill_in "Description", with: @pack.description
    fill_in "Droppoint", with: @pack.droppoint_id
    fill_in "Droppoint Tujuan", with: @pack.droppoint_tujuan
    fill_in "Flag", with: @pack.flag
    fill_in "Ip Address", with: @pack.ip_address
    fill_in "Kg Fisik", with: @pack.kg_fisik
    fill_in "Manifest", with: @pack.manifest_id
    fill_in "Nomor Bagging", with: @pack.nomor_bagging
    fill_in "Tanggal", with: @pack.tanggal
    fill_in "Tanggal Approve", with: @pack.tanggal_approve
    fill_in "Team Kerja", with: @pack.team_kerja
    fill_in "Team Shift", with: @pack.team_shift
    fill_in "Tujuan", with: @pack.tujuan
    fill_in "User Add", with: @pack.user_add
    fill_in "User Approve", with: @pack.user_approve
    fill_in "User Edit", with: @pack.user_edit
    click_on "Update Pack"

    assert_text "Pack was successfully updated"
    click_on "Back"
  end

  test "destroying a Pack" do
    visit packs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pack was successfully destroyed"
  end
end
