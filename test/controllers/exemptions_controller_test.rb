require "test_helper"

class ExemptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exemption = exemptions(:one)
  end

  test "should get index" do
    get exemptions_url
    assert_response :success
  end

  test "should get new" do
    get new_exemption_url
    assert_response :success
  end

  test "should create exemption" do
    assert_difference("Exemption.count") do
      post exemptions_url, params: { exemption: { dinner: @exemption.dinner, exempt_dat: @exemption.exempt_dat, exempt_msg: @exemption.exempt_msg, lunch: @exemption.lunch } }
    end

    assert_redirected_to exemption_url(Exemption.last)
  end

  test "should show exemption" do
    get exemption_url(@exemption)
    assert_response :success
  end

  test "should get edit" do
    get edit_exemption_url(@exemption)
    assert_response :success
  end

  test "should update exemption" do
    patch exemption_url(@exemption), params: { exemption: { dinner: @exemption.dinner, exempt_dat: @exemption.exempt_dat, exempt_msg: @exemption.exempt_msg, lunch: @exemption.lunch } }
    assert_redirected_to exemption_url(@exemption)
  end

  test "should destroy exemption" do
    assert_difference("Exemption.count", -1) do
      delete exemption_url(@exemption)
    end

    assert_redirected_to exemptions_url
  end
end
