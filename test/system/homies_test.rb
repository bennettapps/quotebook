require "application_system_test_case"

class HomiesTest < ApplicationSystemTestCase
  setup do
    @homy = homies(:one)
  end

  test "visiting the index" do
    visit homies_url
    assert_selector "h1", text: "Homies"
  end

  test "should create homie" do
    visit homies_url
    click_on "New homie"

    fill_in "Name", with: @homy.name
    click_on "Create Homie"

    assert_text "Homie was successfully created"
    click_on "Back"
  end

  test "should update Homie" do
    visit homy_url(@homy)
    click_on "Edit this homie", match: :first

    fill_in "Name", with: @homy.name
    click_on "Update Homie"

    assert_text "Homie was successfully updated"
    click_on "Back"
  end

  test "should destroy Homie" do
    visit homy_url(@homy)
    click_on "Destroy this homie", match: :first

    assert_text "Homie was successfully destroyed"
  end
end
