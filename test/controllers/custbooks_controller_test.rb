require "test_helper"

class CustbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custbook = custbooks(:one)
  end

  test "should get index" do
    get custbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_custbook_url
    assert_response :success
  end

  test "should create custbook" do
    assert_difference("Custbook.count") do
      post custbooks_url, params: { custbook: { accessible: @custbook.accessible, booking_date_time: @custbook.booking_date_time, email: @custbook.email, highchair: @custbook.highchair, name: @custbook.name, number_of_diners: @custbook.number_of_diners, phone: @custbook.phone, restaurant_id: @custbook.restaurant_id, status: @custbook.status } }
    end

    assert_redirected_to custbook_url(Custbook.last)
  end

  test "should show custbook" do
    get custbook_url(@custbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_custbook_url(@custbook)
    assert_response :success
  end

  test "should update custbook" do
    patch custbook_url(@custbook), params: { custbook: { accessible: @custbook.accessible, booking_date_time: @custbook.booking_date_time, email: @custbook.email, highchair: @custbook.highchair, name: @custbook.name, number_of_diners: @custbook.number_of_diners, phone: @custbook.phone, restaurant_id: @custbook.restaurant_id, status: @custbook.status } }
    assert_redirected_to custbook_url(@custbook)
  end

  test "should destroy custbook" do
    assert_difference("Custbook.count", -1) do
      delete custbook_url(@custbook)
    end

    assert_redirected_to custbooks_url
  end
end
