require "test_helper"

class StarQuotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get star_quotes_index_url
    assert_response :success
  end

  test "should get show" do
    get star_quotes_show_url
    assert_response :success
  end
end
