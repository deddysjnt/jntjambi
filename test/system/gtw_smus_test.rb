require "application_system_test_case"

class GtwSmusTest < ApplicationSystemTestCase
  setup do
    @gtw_smu = gtw_smus(:one)
  end

  test "visiting the index" do
    visit gtw_smus_url
    assert_selector "h1", text: "Gtw Smus"
  end

  test "creating a Gtw smu" do
    visit gtw_smus_url
    click_on "New Gtw Smu"

    fill_in "Agent", with: @gtw_smu.agent_id
    fill_in "Bagging Fisik", with: @gtw_smu.bagging_fisik
    fill_in "Bagging Selisih", with: @gtw_smu.bagging_selisih
    fill_in "Bagging Smu", with: @gtw_smu.bagging_smu
    fill_in "Biaya Koor", with: @gtw_smu.biaya_koor
    fill_in "Biaya Smu", with: @gtw_smu.biaya_smu
    fill_in "Description", with: @gtw_smu.description
    fill_in "Flag", with: @gtw_smu.flag
    fill_in "Ip Address", with: @gtw_smu.ip_address
    fill_in "Kasir Koor", with: @gtw_smu.kasir_koor
    fill_in "Kasir Smu", with: @gtw_smu.kasir_smu
    fill_in "Kegiatan", with: @gtw_smu.kegiatan
    fill_in "Kendaraan", with: @gtw_smu.kendaraan_id
    fill_in "Kg Fisik", with: @gtw_smu.kg_fisik
    fill_in "Kg Selisih", with: @gtw_smu.kg_selisih
    fill_in "Kg Smu", with: @gtw_smu.kg_smu
    fill_in "Maskapai", with: @gtw_smu.maskapai
    fill_in "Noref", with: @gtw_smu.noref
    fill_in "Smu", with: @gtw_smu.smu_id
    fill_in "Tanggal", with: @gtw_smu.tanggal
    fill_in "Tanggal Approve", with: @gtw_smu.tanggal_approve
    fill_in "Tanggal Estimasi", with: @gtw_smu.tanggal_estimasi
    fill_in "Tanggal Smu", with: @gtw_smu.tanggal_smu
    fill_in "Terms", with: @gtw_smu.terms
    fill_in "Transporter Team", with: @gtw_smu.transporter_team
    fill_in "User Add", with: @gtw_smu.user_add
    fill_in "User Approve", with: @gtw_smu.user_approve
    fill_in "User Edit", with: @gtw_smu.user_edit
    click_on "Create Gtw smu"

    assert_text "Gtw smu was successfully created"
    click_on "Back"
  end

  test "updating a Gtw smu" do
    visit gtw_smus_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @gtw_smu.agent_id
    fill_in "Bagging Fisik", with: @gtw_smu.bagging_fisik
    fill_in "Bagging Selisih", with: @gtw_smu.bagging_selisih
    fill_in "Bagging Smu", with: @gtw_smu.bagging_smu
    fill_in "Biaya Koor", with: @gtw_smu.biaya_koor
    fill_in "Biaya Smu", with: @gtw_smu.biaya_smu
    fill_in "Description", with: @gtw_smu.description
    fill_in "Flag", with: @gtw_smu.flag
    fill_in "Ip Address", with: @gtw_smu.ip_address
    fill_in "Kasir Koor", with: @gtw_smu.kasir_koor
    fill_in "Kasir Smu", with: @gtw_smu.kasir_smu
    fill_in "Kegiatan", with: @gtw_smu.kegiatan
    fill_in "Kendaraan", with: @gtw_smu.kendaraan_id
    fill_in "Kg Fisik", with: @gtw_smu.kg_fisik
    fill_in "Kg Selisih", with: @gtw_smu.kg_selisih
    fill_in "Kg Smu", with: @gtw_smu.kg_smu
    fill_in "Maskapai", with: @gtw_smu.maskapai
    fill_in "Noref", with: @gtw_smu.noref
    fill_in "Smu", with: @gtw_smu.smu_id
    fill_in "Tanggal", with: @gtw_smu.tanggal
    fill_in "Tanggal Approve", with: @gtw_smu.tanggal_approve
    fill_in "Tanggal Estimasi", with: @gtw_smu.tanggal_estimasi
    fill_in "Tanggal Smu", with: @gtw_smu.tanggal_smu
    fill_in "Terms", with: @gtw_smu.terms
    fill_in "Transporter Team", with: @gtw_smu.transporter_team
    fill_in "User Add", with: @gtw_smu.user_add
    fill_in "User Approve", with: @gtw_smu.user_approve
    fill_in "User Edit", with: @gtw_smu.user_edit
    click_on "Update Gtw smu"

    assert_text "Gtw smu was successfully updated"
    click_on "Back"
  end

  test "destroying a Gtw smu" do
    visit gtw_smus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gtw smu was successfully destroyed"
  end
end
