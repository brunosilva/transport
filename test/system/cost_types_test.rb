require "application_system_test_case"

class CostTypesTest < ApplicationSystemTestCase
  setup do
    @cost_type = cost_types(:one)
  end

  test "visiting the index" do
    visit cost_types_url
    assert_selector "h1", text: "Cost types"
  end

  test "should create cost type" do
    visit cost_types_url
    click_on "New cost type"

    fill_in "Description", with: @cost_type.description
    fill_in "Name", with: @cost_type.name
    click_on "Create Cost type"

    assert_text "Cost type was successfully created"
    click_on "Back"
  end

  test "should update Cost type" do
    visit cost_type_url(@cost_type)
    click_on "Edit this cost type", match: :first

    fill_in "Description", with: @cost_type.description
    fill_in "Name", with: @cost_type.name
    click_on "Update Cost type"

    assert_text "Cost type was successfully updated"
    click_on "Back"
  end

  test "should destroy Cost type" do
    visit cost_type_url(@cost_type)
    accept_confirm { click_on "Destroy this cost type", match: :first }

    assert_text "Cost type was successfully destroyed"
  end
end
