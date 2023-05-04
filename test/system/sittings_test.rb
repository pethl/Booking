require "application_system_test_case"

class SittingsTest < ApplicationSystemTestCase
  setup do
    @sitting = sittings(:one)
  end

  test "visiting the index" do
    visit sittings_url
    assert_selector "h1", text: "Sittings"
  end

  test "should create sitting" do
    visit sittings_url
    click_on "New sitting"

    fill_in "Openinghour", with: @sitting.OpeningHour
    fill_in "Belongs to", with: @sitting.belongs_to
    fill_in "End time", with: @sitting.end_time
    fill_in "Start time", with: @sitting.start_time
    click_on "Create Sitting"

    assert_text "Sitting was successfully created"
    click_on "Back"
  end

  test "should update Sitting" do
    visit sitting_url(@sitting)
    click_on "Edit this sitting", match: :first

    fill_in "Openinghour", with: @sitting.OpeningHour
    fill_in "Belongs to", with: @sitting.belongs_to
    fill_in "End time", with: @sitting.end_time
    fill_in "Start time", with: @sitting.start_time
    click_on "Update Sitting"

    assert_text "Sitting was successfully updated"
    click_on "Back"
  end

  test "should destroy Sitting" do
    visit sitting_url(@sitting)
    click_on "Destroy this sitting", match: :first

    assert_text "Sitting was successfully destroyed"
  end
end
