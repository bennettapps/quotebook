require "test_helper"

class QuoteTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote_type = quote_types(:one)
  end

  test "should get index" do
    get quote_types_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_type_url
    assert_response :success
  end

  test "should create quote_type" do
    assert_difference("QuoteType.count") do
      post quote_types_url, params: { quote_type: { description: @quote_type.description } }
    end

    assert_redirected_to quote_type_url(QuoteType.last)
  end

  test "should show quote_type" do
    get quote_type_url(@quote_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_type_url(@quote_type)
    assert_response :success
  end

  test "should update quote_type" do
    patch quote_type_url(@quote_type), params: { quote_type: { description: @quote_type.description } }
    assert_redirected_to quote_type_url(@quote_type)
  end

  test "should destroy quote_type" do
    assert_difference("QuoteType.count", -1) do
      delete quote_type_url(@quote_type)
    end

    assert_redirected_to quote_types_url
  end
end
