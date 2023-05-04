require "application_system_test_case"

class SattingsTest < ApplicationSystemTestCase
  setup do
    @satting = sattings(:one)
  end

  test "visiting the index" do
    visit sattings_url
    assert_selector "h1", text: "Sattings"
  end

  test "should create satting" do
    visit sattings_url
    click_on "New satting"

    fill_in "End time", with: @satting.end_time
    fill_in "Openinghour", with: @satting.openinghour_id
    fill_in "Start time", with: @satting.start_time
    click_on "Create Satting"

    assert_text "Satting was successfully created"
    click_on "Back"
  end

  test "should update Satting" do
    visit satting_url(@satting)
    click_on "Edit this satting", match: :first

    fill_in "End time", with: @satting.end_time
    fill_in "Openinghour", with: @satting.openinghour_id
    fill_in "Start time", with: @satting.start_time
    click_on "Update Satting"

    assert_text "Satting was successfully updated"
    click_on "Back"
  end

  test "should destroy Satting" do
    visit satting_url(@satting)
    click_on "Destroy this satting", match: :first

    assert_text "Satting was successfully destroyed"
  end
end
