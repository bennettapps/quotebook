require "application_system_test_case"

class QuoteTypesTest < ApplicationSystemTestCase
  setup do
    @quote_type = quote_types(:one)
  end

  test "visiting the index" do
    visit quote_types_url
    assert_selector "h1", text: "Quote types"
  end

  test "should create quote type" do
    visit quote_types_url
    click_on "New quote type"

    fill_in "Description", with: @quote_type.description
    click_on "Create Quote type"

    assert_text "Quote type was successfully created"
    click_on "Back"
  end

  test "should update Quote type" do
    visit quote_type_url(@quote_type)
    click_on "Edit this quote type", match: :first

    fill_in "Description", with: @quote_type.description
    click_on "Update Quote type"

    assert_text "Quote type was successfully updated"
    click_on "Back"
  end

  test "should destroy Quote type" do
    visit quote_type_url(@quote_type)
    click_on "Destroy this quote type", match: :first

    assert_text "Quote type was successfully destroyed"
  end
end
