require "test_helper"

class RdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rdetail = rdetails(:one)
  end

  test "should get index" do
    get rdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_rdetail_url
    assert_response :success
  end

  test "should create rdetail" do
    assert_difference("Rdetail.count") do
      post rdetails_url, params: { rdetail: { big_table_count: @rdetail.big_table_count, booking_duration: @rdetail.booking_duration, last_booking_time: @rdetail.last_booking_time, max_booking: @rdetail.max_booking, max_diners_at_current_time: @rdetail.max_diners_at_current_time, min_booking: @rdetail.min_booking, restaurant_id: @rdetail.restaurant_id } }
    end

    assert_redirected_to rdetail_url(Rdetail.last)
  end

  test "should show rdetail" do
    get rdetail_url(@rdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_rdetail_url(@rdetail)
    assert_response :success
  end

  test "should update rdetail" do
    patch rdetail_url(@rdetail), params: { rdetail: { big_table_count: @rdetail.big_table_count, booking_duration: @rdetail.booking_duration, last_booking_time: @rdetail.last_booking_time, max_booking: @rdetail.max_booking, max_diners_at_current_time: @rdetail.max_diners_at_current_time, min_booking: @rdetail.min_booking, restaurant_id: @rdetail.restaurant_id } }
    assert_redirected_to rdetail_url(@rdetail)
  end

  test "should destroy rdetail" do
    assert_difference("Rdetail.count", -1) do
      delete rdetail_url(@rdetail)
    end

    assert_redirected_to rdetails_url
  end
end
