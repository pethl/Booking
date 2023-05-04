require "test_helper"

class SattingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @satting = sattings(:one)
  end

  test "should get index" do
    get sattings_url
    assert_response :success
  end

  test "should get new" do
    get new_satting_url
    assert_response :success
  end

  test "should create satting" do
    assert_difference("Satting.count") do
      post sattings_url, params: { satting: { end_time: @satting.end_time, openinghour_id: @satting.openinghour_id, start_time: @satting.start_time } }
    end

    assert_redirected_to satting_url(Satting.last)
  end

  test "should show satting" do
    get satting_url(@satting)
    assert_response :success
  end

  test "should get edit" do
    get edit_satting_url(@satting)
    assert_response :success
  end

  test "should update satting" do
    patch satting_url(@satting), params: { satting: { end_time: @satting.end_time, openinghour_id: @satting.openinghour_id, start_time: @satting.start_time } }
    assert_redirected_to satting_url(@satting)
  end

  test "should destroy satting" do
    assert_difference("Satting.count", -1) do
      delete satting_url(@satting)
    end

    assert_redirected_to sattings_url
  end
end
