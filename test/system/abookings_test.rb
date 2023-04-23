require "application_system_test_case"

class AbookingsTest < ApplicationSystemTestCase
  setup do
    @abooking = abookings(:one)
  end

  test "visiting the index" do
    visit abookings_url
    assert_selector "h1", text: "Abookings"
  end

  test "should create abooking" do
    visit abookings_url
    click_on "New abooking"

    check "Accessible" if @abooking.accessible
    fill_in "Booking date time", with: @abooking.booking_date_time
    fill_in "Email", with: @abooking.email
    fill_in "Highchair", with: @abooking.highchair
    fill_in "Name", with: @abooking.name
    fill_in "Number of diners", with: @abooking.number_of_diners
    fill_in "Phone", with: @abooking.phone
    fill_in "Restaurant id", with: @abooking.restaurant_id_id
    fill_in "Status", with: @abooking.status
    click_on "Create Abooking"

    assert_text "Abooking was successfully created"
    click_on "Back"
  end

  test "should update Abooking" do
    visit abooking_url(@abooking)
    click_on "Edit this abooking", match: :first

    check "Accessible" if @abooking.accessible
    fill_in "Booking date time", with: @abooking.booking_date_time
    fill_in "Email", with: @abooking.email
    fill_in "Highchair", with: @abooking.highchair
    fill_in "Name", with: @abooking.name
    fill_in "Number of diners", with: @abooking.number_of_diners
    fill_in "Phone", with: @abooking.phone
    fill_in "Restaurant id", with: @abooking.restaurant_id_id
    fill_in "Status", with: @abooking.status
    click_on "Update Abooking"

    assert_text "Abooking was successfully updated"
    click_on "Back"
  end

  test "should destroy Abooking" do
    visit abooking_url(@abooking)
    click_on "Destroy this abooking", match: :first

    assert_text "Abooking was successfully destroyed"
  end
end
