require "test_helper"

class HomiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homie = homies(:one)
  end

  test "should get index" do
    get homies_url
    assert_response :success
  end

  test "should get new" do
    get new_homie_url
    assert_response :success
  end

  test "should create homie" do
    assert_difference("Homie.count") do
      post homies_url, params: { homie: { name: @homie.name } }
    end

    assert_redirected_to homie_url(Homie.last)
  end

  test "should show homie" do
    get homie_url(@homie)
    assert_response :success
  end

  test "should get edit" do
    get edit_homie_url(@homie)
    assert_response :success
  end

  test "should update homie" do
    patch homie_url(@homie), params: { homie: { name: @homie.name } }
    assert_redirected_to homie_url(@homie)
  end

  test "should destroy homie" do
    assert_difference("Homie.count", -1) do
      delete homie_url(@homie)
    end

    assert_redirected_to homies_url
  end
end
