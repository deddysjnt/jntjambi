require 'test_helper'

class EntryPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_post = entry_posts(:one)
  end

  test "should get index" do
    get entry_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_post_url
    assert_response :success
  end

  test "should create entry_post" do
    assert_difference('EntryPost.count') do
      post entry_posts_url, params: { entry_post: { format_key: @entry_post.format_key, last_num: @entry_post.last_num, transaksi: @entry_post.transaksi } }
    end

    assert_redirected_to entry_post_url(EntryPost.last)
  end

  test "should show entry_post" do
    get entry_post_url(@entry_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_post_url(@entry_post)
    assert_response :success
  end

  test "should update entry_post" do
    patch entry_post_url(@entry_post), params: { entry_post: { format_key: @entry_post.format_key, last_num: @entry_post.last_num, transaksi: @entry_post.transaksi } }
    assert_redirected_to entry_post_url(@entry_post)
  end

  test "should destroy entry_post" do
    assert_difference('EntryPost.count', -1) do
      delete entry_post_url(@entry_post)
    end

    assert_redirected_to entry_posts_url
  end
end
