require "application_system_test_case"

class RdetailsTest < ApplicationSystemTestCase
  setup do
    @rdetail = rdetails(:one)
  end

  test "visiting the index" do
    visit rdetails_url
    assert_selector "h1", text: "Rdetails"
  end

  test "should create rdetail" do
    visit rdetails_url
    click_on "New rdetail"

    fill_in "Big table count", with: @rdetail.big_table_count
    fill_in "Booking duration", with: @rdetail.booking_duration
    fill_in "Last booking time", with: @rdetail.last_booking_time
    fill_in "Max booking", with: @rdetail.max_booking
    fill_in "Max diners at current time", with: @rdetail.max_diners_at_current_time
    fill_in "Min booking", with: @rdetail.min_booking
    fill_in "Restaurant", with: @rdetail.restaurant_id
    click_on "Create Rdetail"

    assert_text "Rdetail was successfully created"
    click_on "Back"
  end

  test "should update Rdetail" do
    visit rdetail_url(@rdetail)
    click_on "Edit this rdetail", match: :first

    fill_in "Big table count", with: @rdetail.big_table_count
    fill_in "Booking duration", with: @rdetail.booking_duration
    fill_in "Last booking time", with: @rdetail.last_booking_time
    fill_in "Max booking", with: @rdetail.max_booking
    fill_in "Max diners at current time", with: @rdetail.max_diners_at_current_time
    fill_in "Min booking", with: @rdetail.min_booking
    fill_in "Restaurant", with: @rdetail.restaurant_id
    click_on "Update Rdetail"

    assert_text "Rdetail was successfully updated"
    click_on "Back"
  end

  test "should destroy Rdetail" do
    visit rdetail_url(@rdetail)
    click_on "Destroy this rdetail", match: :first

    assert_text "Rdetail was successfully destroyed"
  end
end
