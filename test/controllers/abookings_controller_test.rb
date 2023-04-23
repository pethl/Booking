require "test_helper"

class AbookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abooking = abookings(:one)
  end

  test "should get index" do
    get abookings_url
    assert_response :success
  end

  test "should get new" do
    get new_abooking_url
    assert_response :success
  end

  test "should create abooking" do
    assert_difference("Abooking.count") do
      post abookings_url, params: { abooking: { accessible: @abooking.accessible, booking_date_time: @abooking.booking_date_time, email: @abooking.email, highchair: @abooking.highchair, name: @abooking.name, number_of_diners: @abooking.number_of_diners, phone: @abooking.phone, restaurant_id_id: @abooking.restaurant_id_id, status: @abooking.status } }
    end

    assert_redirected_to abooking_url(Abooking.last)
  end

  test "should show abooking" do
    get abooking_url(@abooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_abooking_url(@abooking)
    assert_response :success
  end

  test "should update abooking" do
    patch abooking_url(@abooking), params: { abooking: { accessible: @abooking.accessible, booking_date_time: @abooking.booking_date_time, email: @abooking.email, highchair: @abooking.highchair, name: @abooking.name, number_of_diners: @abooking.number_of_diners, phone: @abooking.phone, restaurant_id_id: @abooking.restaurant_id_id, status: @abooking.status } }
    assert_redirected_to abooking_url(@abooking)
  end

  test "should destroy abooking" do
    assert_difference("Abooking.count", -1) do
      delete abooking_url(@abooking)
    end

    assert_redirected_to abookings_url
  end
end
