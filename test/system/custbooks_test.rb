require "application_system_test_case"

class CustbooksTest < ApplicationSystemTestCase
  setup do
    @custbook = custbooks(:one)
  end

  test "visiting the index" do
    visit custbooks_url
    assert_selector "h1", text: "Custbooks"
  end

  test "should create custbook" do
    visit custbooks_url
    click_on "New custbook"

    check "Accessible" if @custbook.accessible
    fill_in "Booking date time", with: @custbook.booking_date_time
    fill_in "Email", with: @custbook.email
    fill_in "Highchair", with: @custbook.highchair
    fill_in "Name", with: @custbook.name
    fill_in "Number of diners", with: @custbook.number_of_diners
    fill_in "Phone", with: @custbook.phone
    fill_in "Restaurant", with: @custbook.restaurant_id
    fill_in "Status", with: @custbook.status
    click_on "Create Custbook"

    assert_text "Custbook was successfully created"
    click_on "Back"
  end

  test "should update Custbook" do
    visit custbook_url(@custbook)
    click_on "Edit this custbook", match: :first

    check "Accessible" if @custbook.accessible
    fill_in "Booking date time", with: @custbook.booking_date_time
    fill_in "Email", with: @custbook.email
    fill_in "Highchair", with: @custbook.highchair
    fill_in "Name", with: @custbook.name
    fill_in "Number of diners", with: @custbook.number_of_diners
    fill_in "Phone", with: @custbook.phone
    fill_in "Restaurant", with: @custbook.restaurant_id
    fill_in "Status", with: @custbook.status
    click_on "Update Custbook"

    assert_text "Custbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Custbook" do
    visit custbook_url(@custbook)
    click_on "Destroy this custbook", match: :first

    assert_text "Custbook was successfully destroyed"
  end
end
