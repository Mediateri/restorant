require "application_system_test_case"

class LunchesTest < ApplicationSystemTestCase
  setup do
    @lunch = lunches(:one)
  end

  test "visiting the index" do
    visit lunches_url
    assert_selector "h1", text: "Lunches"
  end

  test "creating a Lunch" do
    visit lunches_url
    click_on "New Lunch"

    fill_in "Cost", with: @lunch.cost
    fill_in "Item", with: @lunch.item
    fill_in "Restora", with: @lunch.restora_id
    click_on "Create Lunch"

    assert_text "Lunch was successfully created"
    click_on "Back"
  end

  test "updating a Lunch" do
    visit lunches_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @lunch.cost
    fill_in "Item", with: @lunch.item
    fill_in "Restora", with: @lunch.restora_id
    click_on "Update Lunch"

    assert_text "Lunch was successfully updated"
    click_on "Back"
  end

  test "destroying a Lunch" do
    visit lunches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lunch was successfully destroyed"
  end
end
