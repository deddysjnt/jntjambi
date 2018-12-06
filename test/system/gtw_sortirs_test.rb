require "application_system_test_case"

class GtwSortirsTest < ApplicationSystemTestCase
  setup do
    @gtw_sortir = gtw_sortirs(:one)
  end

  test "visiting the index" do
    visit gtw_sortirs_url
    assert_selector "h1", text: "Gtw Sortirs"
  end

  test "creating a Gtw sortir" do
    visit gtw_sortirs_url
    click_on "New Gtw Sortir"

    fill_in "Agent", with: @gtw_sortir.agent_id
    fill_in "Awb Dp", with: @gtw_sortir.awb_dp
    fill_in "Awb E3", with: @gtw_sortir.awb_e3
    fill_in "Awb Gtw", with: @gtw_sortir.awb_gtw
    fill_in "Awb Selisih Dp", with: @gtw_sortir.awb_selisih_dp
    fill_in "Awb Selisih E3", with: @gtw_sortir.awb_selisih_e3
    fill_in "Bagging", with: @gtw_sortir.bagging_id
    fill_in "Description", with: @gtw_sortir.description
    fill_in "Droppoint Asal", with: @gtw_sortir.droppoint_asal
    fill_in "Droppoint Tujuan", with: @gtw_sortir.droppoint_tujuan
    fill_in "Flag", with: @gtw_sortir.flag
    fill_in "Fresh Paket", with: @gtw_sortir.fresh_paket
    fill_in "Gtw Team Kerja", with: @gtw_sortir.gtw_team_kerja
    fill_in "Gtw Team Shift", with: @gtw_sortir.gtw_team_shift
    fill_in "Ip Address", with: @gtw_sortir.ip_address
    fill_in "Kegiatan", with: @gtw_sortir.kegiatan
    fill_in "Kg Dp", with: @gtw_sortir.kg_dp
    fill_in "Kg E3", with: @gtw_sortir.kg_e3
    fill_in "Kg Gtw", with: @gtw_sortir.kg_gtw
    fill_in "Kg Selisih Dp", with: @gtw_sortir.kg_selisih_dp
    fill_in "Kg Selisih E3", with: @gtw_sortir.kg_selisih_e3
    fill_in "Manifest", with: @gtw_sortir.manifest_id
    fill_in "Tanggal", with: @gtw_sortir.tanggal
    fill_in "Tanggal Approve", with: @gtw_sortir.tanggal_approve
    fill_in "Tanggal Dp", with: @gtw_sortir.tanggal_dp
    fill_in "User Add", with: @gtw_sortir.user_add
    fill_in "User Approve", with: @gtw_sortir.user_approve
    fill_in "User Edit", with: @gtw_sortir.user_edit
    click_on "Create Gtw sortir"

    assert_text "Gtw sortir was successfully created"
    click_on "Back"
  end

  test "updating a Gtw sortir" do
    visit gtw_sortirs_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @gtw_sortir.agent_id
    fill_in "Awb Dp", with: @gtw_sortir.awb_dp
    fill_in "Awb E3", with: @gtw_sortir.awb_e3
    fill_in "Awb Gtw", with: @gtw_sortir.awb_gtw
    fill_in "Awb Selisih Dp", with: @gtw_sortir.awb_selisih_dp
    fill_in "Awb Selisih E3", with: @gtw_sortir.awb_selisih_e3
    fill_in "Bagging", with: @gtw_sortir.bagging_id
    fill_in "Description", with: @gtw_sortir.description
    fill_in "Droppoint Asal", with: @gtw_sortir.droppoint_asal
    fill_in "Droppoint Tujuan", with: @gtw_sortir.droppoint_tujuan
    fill_in "Flag", with: @gtw_sortir.flag
    fill_in "Fresh Paket", with: @gtw_sortir.fresh_paket
    fill_in "Gtw Team Kerja", with: @gtw_sortir.gtw_team_kerja
    fill_in "Gtw Team Shift", with: @gtw_sortir.gtw_team_shift
    fill_in "Ip Address", with: @gtw_sortir.ip_address
    fill_in "Kegiatan", with: @gtw_sortir.kegiatan
    fill_in "Kg Dp", with: @gtw_sortir.kg_dp
    fill_in "Kg E3", with: @gtw_sortir.kg_e3
    fill_in "Kg Gtw", with: @gtw_sortir.kg_gtw
    fill_in "Kg Selisih Dp", with: @gtw_sortir.kg_selisih_dp
    fill_in "Kg Selisih E3", with: @gtw_sortir.kg_selisih_e3
    fill_in "Manifest", with: @gtw_sortir.manifest_id
    fill_in "Tanggal", with: @gtw_sortir.tanggal
    fill_in "Tanggal Approve", with: @gtw_sortir.tanggal_approve
    fill_in "Tanggal Dp", with: @gtw_sortir.tanggal_dp
    fill_in "User Add", with: @gtw_sortir.user_add
    fill_in "User Approve", with: @gtw_sortir.user_approve
    fill_in "User Edit", with: @gtw_sortir.user_edit
    click_on "Update Gtw sortir"

    assert_text "Gtw sortir was successfully updated"
    click_on "Back"
  end

  test "destroying a Gtw sortir" do
    visit gtw_sortirs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gtw sortir was successfully destroyed"
  end
end
