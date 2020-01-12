require "application_system_test_case"

class RestorasTest < ApplicationSystemTestCase
  setup do
    @restora = restoras(:one)
  end

  test "visiting the index" do
    visit restoras_url
    assert_selector "h1", text: "Restoras"
  end

  test "creating a Restora" do
    visit restoras_url
    click_on "New Restora"

    fill_in "Description", with: @restora.description
    fill_in "Image", with: @restora.image
    fill_in "Location", with: @restora.location
    fill_in "Name", with: @restora.name
    click_on "Create Restora"

    assert_text "Restora was successfully created"
    click_on "Back"
  end

  test "updating a Restora" do
    visit restoras_url
    click_on "Edit", match: :first

    fill_in "Description", with: @restora.description
    fill_in "Image", with: @restora.image
    fill_in "Location", with: @restora.location
    fill_in "Name", with: @restora.name
    click_on "Update Restora"

    assert_text "Restora was successfully updated"
    click_on "Back"
  end

  test "destroying a Restora" do
    visit restoras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restora was successfully destroyed"
  end
end
