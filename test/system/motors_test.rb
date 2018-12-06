require "application_system_test_case"

class MotorsTest < ApplicationSystemTestCase
  setup do
    @motor = motors(:one)
  end

  test "visiting the index" do
    visit motors_url
    assert_selector "h1", text: "Motors"
  end

  test "creating a Motor" do
    visit motors_url
    click_on "New Motor"

    fill_in "Karyawan", with: @motor.karyawan_id
    fill_in "Km Reg", with: @motor.km_reg
    fill_in "Nopol", with: @motor.nopol
    fill_in "Spect", with: @motor.spect
    fill_in "Tangga Register", with: @motor.tangga_register
    fill_in "Tanggal App", with: @motor.tanggal_app
    fill_in "User Add", with: @motor.user_add
    fill_in "User App", with: @motor.user_app
    fill_in "User Edit", with: @motor.user_edit
    click_on "Create Motor"

    assert_text "Motor was successfully created"
    click_on "Back"
  end

  test "updating a Motor" do
    visit motors_url
    click_on "Edit", match: :first

    fill_in "Karyawan", with: @motor.karyawan_id
    fill_in "Km Reg", with: @motor.km_reg
    fill_in "Nopol", with: @motor.nopol
    fill_in "Spect", with: @motor.spect
    fill_in "Tangga Register", with: @motor.tangga_register
    fill_in "Tanggal App", with: @motor.tanggal_app
    fill_in "User Add", with: @motor.user_add
    fill_in "User App", with: @motor.user_app
    fill_in "User Edit", with: @motor.user_edit
    click_on "Update Motor"

    assert_text "Motor was successfully updated"
    click_on "Back"
  end

  test "destroying a Motor" do
    visit motors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Motor was successfully destroyed"
  end
end
