require "application_system_test_case"

class TravelsTest < ApplicationSystemTestCase
  setup do
    @travel = travels(:one)
  end

  test "visiting the index" do
    visit travels_url
    assert_selector "h1", text: "Travels"
  end

  test "should create travel" do
    visit travels_url
    click_on "New travel"

    fill_in "End at", with: @travel.end_at
    fill_in "Finished in", with: @travel.finished_in
    fill_in "Start in", with: @travel.start_in
    click_on "Create Travel"

    assert_text "Travel was successfully created"
    click_on "Back"
  end

  test "should update Travel" do
    visit travel_url(@travel)
    click_on "Edit this travel", match: :first

    fill_in "End at", with: @travel.end_at
    fill_in "Finished in", with: @travel.finished_in
    fill_in "Start in", with: @travel.start_in
    click_on "Update Travel"

    assert_text "Travel was successfully updated"
    click_on "Back"
  end

  test "should destroy Travel" do
    visit travel_url(@travel)
    accept_confirm { click_on "Destroy this travel", match: :first }

    assert_text "Travel was successfully destroyed"
  end
end
