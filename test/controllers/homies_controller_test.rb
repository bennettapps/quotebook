require "test_helper"

class HomiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homy = homies(:one)
  end

  test "should get index" do
    get homies_url
    assert_response :success
  end

  test "should get new" do
    get new_homy_url
    assert_response :success
  end

  test "should create homy" do
    assert_difference("Homie.count") do
      post homies_url, params: { homy: { name: @homy.name } }
    end

    assert_redirected_to homy_url(Homie.last)
  end

  test "should show homy" do
    get homy_url(@homy)
    assert_response :success
  end

  test "should get edit" do
    get edit_homy_url(@homy)
    assert_response :success
  end

  test "should update homy" do
    patch homy_url(@homy), params: { homy: { name: @homy.name } }
    assert_redirected_to homy_url(@homy)
  end

  test "should destroy homy" do
    assert_difference("Homie.count", -1) do
      delete homy_url(@homy)
    end

    assert_redirected_to homies_url
  end
end
