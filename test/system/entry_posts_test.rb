require "application_system_test_case"

class EntryPostsTest < ApplicationSystemTestCase
  setup do
    @entry_post = entry_posts(:one)
  end

  test "visiting the index" do
    visit entry_posts_url
    assert_selector "h1", text: "Entry Posts"
  end

  test "creating a Entry post" do
    visit entry_posts_url
    click_on "New Entry Post"

    fill_in "Format Key", with: @entry_post.format_key
    fill_in "Last Num", with: @entry_post.last_num
    fill_in "Transaksi", with: @entry_post.transaksi
    click_on "Create Entry post"

    assert_text "Entry post was successfully created"
    click_on "Back"
  end

  test "updating a Entry post" do
    visit entry_posts_url
    click_on "Edit", match: :first

    fill_in "Format Key", with: @entry_post.format_key
    fill_in "Last Num", with: @entry_post.last_num
    fill_in "Transaksi", with: @entry_post.transaksi
    click_on "Update Entry post"

    assert_text "Entry post was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry post" do
    visit entry_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry post was successfully destroyed"
  end
end
