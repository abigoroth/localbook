require 'test_helper'

class WallpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallpost = wallposts(:one)
  end

  test "should get index" do
    get wallposts_url
    assert_response :success
  end

  test "should get new" do
    get new_wallpost_url
    assert_response :success
  end

  test "should create wallpost" do
    assert_difference('Wallpost.count') do
      post wallposts_url, params: { wallpost: { user_id: @wallpost.user_id, wall_date: @wallpost.wall_date, wall_emotion: @wallpost.wall_emotion, wall_status: @wallpost.wall_status } }
    end

    assert_redirected_to wallpost_url(Wallpost.last)
  end

  test "should show wallpost" do
    get wallpost_url(@wallpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallpost_url(@wallpost)
    assert_response :success
  end

  test "should update wallpost" do
    patch wallpost_url(@wallpost), params: { wallpost: { user_id: @wallpost.user_id, wall_date: @wallpost.wall_date, wall_emotion: @wallpost.wall_emotion, wall_status: @wallpost.wall_status } }
    assert_redirected_to wallpost_url(@wallpost)
  end

  test "should destroy wallpost" do
    assert_difference('Wallpost.count', -1) do
      delete wallpost_url(@wallpost)
    end

    assert_redirected_to wallposts_url
  end
end
