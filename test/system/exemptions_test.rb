require "application_system_test_case"

class ExemptionsTest < ApplicationSystemTestCase
  setup do
    @exemption = exemptions(:one)
  end

  test "visiting the index" do
    visit exemptions_url
    assert_selector "h1", text: "Exemptions"
  end

  test "should create exemption" do
    visit exemptions_url
    click_on "New exemption"

    check "Dinner" if @exemption.dinner
    fill_in "Exempt dat", with: @exemption.exempt_dat
    fill_in "Exempt msg", with: @exemption.exempt_msg
    check "Lunch" if @exemption.lunch
    click_on "Create Exemption"

    assert_text "Exemption was successfully created"
    click_on "Back"
  end

  test "should update Exemption" do
    visit exemption_url(@exemption)
    click_on "Edit this exemption", match: :first

    check "Dinner" if @exemption.dinner
    fill_in "Exempt dat", with: @exemption.exempt_dat
    fill_in "Exempt msg", with: @exemption.exempt_msg
    check "Lunch" if @exemption.lunch
    click_on "Update Exemption"

    assert_text "Exemption was successfully updated"
    click_on "Back"
  end

  test "should destroy Exemption" do
    visit exemption_url(@exemption)
    click_on "Destroy this exemption", match: :first

    assert_text "Exemption was successfully destroyed"
  end
end
