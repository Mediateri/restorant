require "application_system_test_case"

class DisrictsTest < ApplicationSystemTestCase
  setup do
    @disrict = disricts(:one)
  end

  test "visiting the index" do
    visit disricts_url
    assert_selector "h1", text: "Disricts"
  end

  test "creating a Disrict" do
    visit disricts_url
    click_on "New Disrict"

    fill_in "Name", with: @disrict.name
    click_on "Create Disrict"

    assert_text "Disrict was successfully created"
    click_on "Back"
  end

  test "updating a Disrict" do
    visit disricts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @disrict.name
    click_on "Update Disrict"

    assert_text "Disrict was successfully updated"
    click_on "Back"
  end

  test "destroying a Disrict" do
    visit disricts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disrict was successfully destroyed"
  end
end
