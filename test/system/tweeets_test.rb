require "application_system_test_case"

class TweeetsTest < ApplicationSystemTestCase
  setup do
    @tweeet = tweeets(:one)
  end

  test "visiting the index" do
    visit tweeets_url
    assert_selector "h1", text: "Tweeets"
  end

  test "should create tweeet" do
    visit tweeets_url
    click_on "New tweeet"

    fill_in "Tweeet", with: @tweeet.tweeet
    click_on "Create Tweeet"

    assert_text "Tweeet was successfully created"
    click_on "Back"
  end

  test "should update Tweeet" do
    visit tweeet_url(@tweeet)
    click_on "Edit this tweeet", match: :first

    fill_in "Tweeet", with: @tweeet.tweeet
    click_on "Update Tweeet"

    assert_text "Tweeet was successfully updated"
    click_on "Back"
  end

  test "should destroy Tweeet" do
    visit tweeet_url(@tweeet)
    click_on "Destroy this tweeet", match: :first

    assert_text "Tweeet was successfully destroyed"
  end
end
