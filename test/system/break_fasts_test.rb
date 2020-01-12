require "application_system_test_case"

class BreakFastsTest < ApplicationSystemTestCase
  setup do
    @break_fast = break_fasts(:one)
  end

  test "visiting the index" do
    visit break_fasts_url
    assert_selector "h1", text: "Break Fasts"
  end

  test "creating a Break fast" do
    visit break_fasts_url
    click_on "New Break Fast"

    fill_in "Cost", with: @break_fast.cost
    fill_in "Item", with: @break_fast.item
    fill_in "Restora", with: @break_fast.restora_id
    click_on "Create Break fast"

    assert_text "Break fast was successfully created"
    click_on "Back"
  end

  test "updating a Break fast" do
    visit break_fasts_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @break_fast.cost
    fill_in "Item", with: @break_fast.item
    fill_in "Restora", with: @break_fast.restora_id
    click_on "Update Break fast"

    assert_text "Break fast was successfully updated"
    click_on "Back"
  end

  test "destroying a Break fast" do
    visit break_fasts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Break fast was successfully destroyed"
  end
end
