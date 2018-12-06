require "application_system_test_case"

class PkhdsTest < ApplicationSystemTestCase
  setup do
    @pkhd = pkhds(:one)
  end

  test "visiting the index" do
    visit pkhds_url
    assert_selector "h1", text: "Pkhds"
  end

  test "creating a Pkhd" do
    visit pkhds_url
    click_on "New Pkhd"

    fill_in "Description", with: @pkhd.description
    fill_in "Droppoint", with: @pkhd.droppoint
    fill_in "Flag", with: @pkhd.flag
    fill_in "Ip Address", with: @pkhd.ip_address
    fill_in "No Ref", with: @pkhd.no_ref
    fill_in "Nomor", with: @pkhd.nomor
    fill_in "Tanggal", with: @pkhd.tanggal
    fill_in "Tanggal Approve", with: @pkhd.tanggal_approve
    fill_in "User Add", with: @pkhd.user_add
    fill_in "User Approve", with: @pkhd.user_approve
    fill_in "User Edit", with: @pkhd.user_edit
    click_on "Create Pkhd"

    assert_text "Pkhd was successfully created"
    click_on "Back"
  end

  test "updating a Pkhd" do
    visit pkhds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @pkhd.description
    fill_in "Droppoint", with: @pkhd.droppoint
    fill_in "Flag", with: @pkhd.flag
    fill_in "Ip Address", with: @pkhd.ip_address
    fill_in "No Ref", with: @pkhd.no_ref
    fill_in "Nomor", with: @pkhd.nomor
    fill_in "Tanggal", with: @pkhd.tanggal
    fill_in "Tanggal Approve", with: @pkhd.tanggal_approve
    fill_in "User Add", with: @pkhd.user_add
    fill_in "User Approve", with: @pkhd.user_approve
    fill_in "User Edit", with: @pkhd.user_edit
    click_on "Update Pkhd"

    assert_text "Pkhd was successfully updated"
    click_on "Back"
  end

  test "destroying a Pkhd" do
    visit pkhds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pkhd was successfully destroyed"
  end
end
