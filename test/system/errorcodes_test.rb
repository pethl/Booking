require "application_system_test_case"

class ErrorcodesTest < ApplicationSystemTestCase
  setup do
    @errorcode = errorcodes(:one)
  end

  test "visiting the index" do
    visit errorcodes_url
    assert_selector "h1", text: "Errorcodes"
  end

  test "should create errorcode" do
    visit errorcodes_url
    click_on "New errorcode"

    fill_in "Desc", with: @errorcode.desc
    fill_in "Msg", with: @errorcode.msg
    fill_in "Ref", with: @errorcode.ref
    click_on "Create Errorcode"

    assert_text "Errorcode was successfully created"
    click_on "Back"
  end

  test "should update Errorcode" do
    visit errorcode_url(@errorcode)
    click_on "Edit this errorcode", match: :first

    fill_in "Desc", with: @errorcode.desc
    fill_in "Msg", with: @errorcode.msg
    fill_in "Ref", with: @errorcode.ref
    click_on "Update Errorcode"

    assert_text "Errorcode was successfully updated"
    click_on "Back"
  end

  test "should destroy Errorcode" do
    visit errorcode_url(@errorcode)
    click_on "Destroy this errorcode", match: :first

    assert_text "Errorcode was successfully destroyed"
  end
end
