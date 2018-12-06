require "application_system_test_case"

class GtwStmpsTest < ApplicationSystemTestCase
  setup do
    @gtw_stmp = gtw_stmps(:one)
  end

  test "visiting the index" do
    visit gtw_stmps_url
    assert_selector "h1", text: "Gtw Stmps"
  end

  test "creating a Gtw stmp" do
    visit gtw_stmps_url
    click_on "New Gtw Stmp"

    fill_in "Agent", with: @gtw_stmp.agent_id
    fill_in "Awb Fisik", with: @gtw_stmp.awb_fisik
    fill_in "Awb Manifest", with: @gtw_stmp.awb_manifest
    fill_in "Description", with: @gtw_stmp.description
    fill_in "Diserahkan Oleh", with: @gtw_stmp.diserahkan_oleh
    fill_in "Diterima Dari", with: @gtw_stmp.diterima_dari
    fill_in "Droppoint", with: @gtw_stmp.droppoint_id
    fill_in "Flag", with: @gtw_stmp.flag
    fill_in "Fresh Paket", with: @gtw_stmp.fresh_paket
    fill_in "Gtw Team Kerja", with: @gtw_stmp.gtw_team_kerja
    fill_in "Gtw Team Shift", with: @gtw_stmp.gtw_team_shift
    fill_in "Ip Address", with: @gtw_stmp.ip_address
    fill_in "Kegiatan", with: @gtw_stmp.kegiatan
    fill_in "Kendaraan", with: @gtw_stmp.kendaraan_id
    fill_in "Kg Fisik", with: @gtw_stmp.kg_fisik
    fill_in "Kg Manisfet", with: @gtw_stmp.kg_manisfet
    fill_in "Manifest", with: @gtw_stmp.manifest_id
    fill_in "Noref", with: @gtw_stmp.noref
    fill_in "Qty Bagging Fisik", with: @gtw_stmp.qty_bagging_fisik
    fill_in "Qty Bagging Manifest", with: @gtw_stmp.qty_bagging_manifest
    fill_in "Selisih Awb", with: @gtw_stmp.selisih_awb
    fill_in "Selisih Bagging", with: @gtw_stmp.selisih_bagging
    fill_in "Selisih Kg", with: @gtw_stmp.selisih_kg
    fill_in "Tanggal", with: @gtw_stmp.tanggal
    fill_in "Tanggal Approve", with: @gtw_stmp.tanggal_approve
    fill_in "Transporter Team", with: @gtw_stmp.transporter_team
    fill_in "User Add", with: @gtw_stmp.user_add
    fill_in "User Approve", with: @gtw_stmp.user_approve
    fill_in "User Edit", with: @gtw_stmp.user_edit
    click_on "Create Gtw stmp"

    assert_text "Gtw stmp was successfully created"
    click_on "Back"
  end

  test "updating a Gtw stmp" do
    visit gtw_stmps_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @gtw_stmp.agent_id
    fill_in "Awb Fisik", with: @gtw_stmp.awb_fisik
    fill_in "Awb Manifest", with: @gtw_stmp.awb_manifest
    fill_in "Description", with: @gtw_stmp.description
    fill_in "Diserahkan Oleh", with: @gtw_stmp.diserahkan_oleh
    fill_in "Diterima Dari", with: @gtw_stmp.diterima_dari
    fill_in "Droppoint", with: @gtw_stmp.droppoint_id
    fill_in "Flag", with: @gtw_stmp.flag
    fill_in "Fresh Paket", with: @gtw_stmp.fresh_paket
    fill_in "Gtw Team Kerja", with: @gtw_stmp.gtw_team_kerja
    fill_in "Gtw Team Shift", with: @gtw_stmp.gtw_team_shift
    fill_in "Ip Address", with: @gtw_stmp.ip_address
    fill_in "Kegiatan", with: @gtw_stmp.kegiatan
    fill_in "Kendaraan", with: @gtw_stmp.kendaraan_id
    fill_in "Kg Fisik", with: @gtw_stmp.kg_fisik
    fill_in "Kg Manisfet", with: @gtw_stmp.kg_manisfet
    fill_in "Manifest", with: @gtw_stmp.manifest_id
    fill_in "Noref", with: @gtw_stmp.noref
    fill_in "Qty Bagging Fisik", with: @gtw_stmp.qty_bagging_fisik
    fill_in "Qty Bagging Manifest", with: @gtw_stmp.qty_bagging_manifest
    fill_in "Selisih Awb", with: @gtw_stmp.selisih_awb
    fill_in "Selisih Bagging", with: @gtw_stmp.selisih_bagging
    fill_in "Selisih Kg", with: @gtw_stmp.selisih_kg
    fill_in "Tanggal", with: @gtw_stmp.tanggal
    fill_in "Tanggal Approve", with: @gtw_stmp.tanggal_approve
    fill_in "Transporter Team", with: @gtw_stmp.transporter_team
    fill_in "User Add", with: @gtw_stmp.user_add
    fill_in "User Approve", with: @gtw_stmp.user_approve
    fill_in "User Edit", with: @gtw_stmp.user_edit
    click_on "Update Gtw stmp"

    assert_text "Gtw stmp was successfully updated"
    click_on "Back"
  end

  test "destroying a Gtw stmp" do
    visit gtw_stmps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gtw stmp was successfully destroyed"
  end
end
