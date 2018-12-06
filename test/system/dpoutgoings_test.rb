require "application_system_test_case"

class DpoutgoingsTest < ApplicationSystemTestCase
  setup do
    @dpoutgoing = dpoutgoings(:one)
  end

  test "visiting the index" do
    visit dpoutgoings_url
    assert_selector "h1", text: "Dpoutgoings"
  end

  test "creating a Dpoutgoing" do
    visit dpoutgoings_url
    click_on "New Dpoutgoing"

    fill_in "Awb Cod Manual", with: @dpoutgoing.awb_cod_manual
    fill_in "Awb Cod Online", with: @dpoutgoing.awb_cod_online
    fill_in "Awb Dfod Manual", with: @dpoutgoing.awb_dfod_manual
    fill_in "Awb Dfod Online", with: @dpoutgoing.awb_dfod_online
    fill_in "Awb Ppcash Manual", with: @dpoutgoing.awb_ppcash_manual
    fill_in "Awb Ppcash Online", with: @dpoutgoing.awb_ppcash_online
    fill_in "Awb Pppm Manual", with: @dpoutgoing.awb_pppm_manual
    fill_in "Awb Pppm Online", with: @dpoutgoing.awb_pppm_online
    fill_in "Awb Total", with: @dpoutgoing.awb_total
    fill_in "Description", with: @dpoutgoing.description
    fill_in "Droppoint", with: @dpoutgoing.droppoint_id
    fill_in "Flag", with: @dpoutgoing.flag
    fill_in "Ip Address", with: @dpoutgoing.ip_address
    fill_in "Karyawan", with: @dpoutgoing.karyawan_id
    fill_in "Nilai Cod Manual", with: @dpoutgoing.nilai_cod_manual
    fill_in "Nilai Cod Online", with: @dpoutgoing.nilai_cod_online
    fill_in "Nilai Dfod Manual", with: @dpoutgoing.nilai_dfod_manual
    fill_in "Nilai Dfod Online", with: @dpoutgoing.nilai_dfod_online
    fill_in "Nilai Ppcash Manual", with: @dpoutgoing.nilai_ppcash_manual
    fill_in "Nilai Ppcash Online", with: @dpoutgoing.nilai_ppcash_online
    fill_in "Nilai Pppm Manual", with: @dpoutgoing.nilai_pppm_manual
    fill_in "Nilai Pppm Online", with: @dpoutgoing.nilai_pppm_online
    fill_in "Nomor", with: @dpoutgoing.nomor
    fill_in "Perkiraan", with: @dpoutgoing.perkiraan_id
    fill_in "Tanggal", with: @dpoutgoing.tanggal
    fill_in "Tanggal Approve", with: @dpoutgoing.tanggal_approve
    fill_in "Transaksi", with: @dpoutgoing.transaksi
    fill_in "Uang Masuk", with: @dpoutgoing.uang_masuk
    fill_in "User Add", with: @dpoutgoing.user_add
    fill_in "User Approve", with: @dpoutgoing.user_approve
    fill_in "User Edit", with: @dpoutgoing.user_edit
    click_on "Create Dpoutgoing"

    assert_text "Dpoutgoing was successfully created"
    click_on "Back"
  end

  test "updating a Dpoutgoing" do
    visit dpoutgoings_url
    click_on "Edit", match: :first

    fill_in "Awb Cod Manual", with: @dpoutgoing.awb_cod_manual
    fill_in "Awb Cod Online", with: @dpoutgoing.awb_cod_online
    fill_in "Awb Dfod Manual", with: @dpoutgoing.awb_dfod_manual
    fill_in "Awb Dfod Online", with: @dpoutgoing.awb_dfod_online
    fill_in "Awb Ppcash Manual", with: @dpoutgoing.awb_ppcash_manual
    fill_in "Awb Ppcash Online", with: @dpoutgoing.awb_ppcash_online
    fill_in "Awb Pppm Manual", with: @dpoutgoing.awb_pppm_manual
    fill_in "Awb Pppm Online", with: @dpoutgoing.awb_pppm_online
    fill_in "Awb Total", with: @dpoutgoing.awb_total
    fill_in "Description", with: @dpoutgoing.description
    fill_in "Droppoint", with: @dpoutgoing.droppoint_id
    fill_in "Flag", with: @dpoutgoing.flag
    fill_in "Ip Address", with: @dpoutgoing.ip_address
    fill_in "Karyawan", with: @dpoutgoing.karyawan_id
    fill_in "Nilai Cod Manual", with: @dpoutgoing.nilai_cod_manual
    fill_in "Nilai Cod Online", with: @dpoutgoing.nilai_cod_online
    fill_in "Nilai Dfod Manual", with: @dpoutgoing.nilai_dfod_manual
    fill_in "Nilai Dfod Online", with: @dpoutgoing.nilai_dfod_online
    fill_in "Nilai Ppcash Manual", with: @dpoutgoing.nilai_ppcash_manual
    fill_in "Nilai Ppcash Online", with: @dpoutgoing.nilai_ppcash_online
    fill_in "Nilai Pppm Manual", with: @dpoutgoing.nilai_pppm_manual
    fill_in "Nilai Pppm Online", with: @dpoutgoing.nilai_pppm_online
    fill_in "Nomor", with: @dpoutgoing.nomor
    fill_in "Perkiraan", with: @dpoutgoing.perkiraan_id
    fill_in "Tanggal", with: @dpoutgoing.tanggal
    fill_in "Tanggal Approve", with: @dpoutgoing.tanggal_approve
    fill_in "Transaksi", with: @dpoutgoing.transaksi
    fill_in "Uang Masuk", with: @dpoutgoing.uang_masuk
    fill_in "User Add", with: @dpoutgoing.user_add
    fill_in "User Approve", with: @dpoutgoing.user_approve
    fill_in "User Edit", with: @dpoutgoing.user_edit
    click_on "Update Dpoutgoing"

    assert_text "Dpoutgoing was successfully updated"
    click_on "Back"
  end

  test "destroying a Dpoutgoing" do
    visit dpoutgoings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dpoutgoing was successfully destroyed"
  end
end
