require "test_helper"

class ErrorcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @errorcode = errorcodes(:one)
  end

  test "should get index" do
    get errorcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_errorcode_url
    assert_response :success
  end

  test "should create errorcode" do
    assert_difference("Errorcode.count") do
      post errorcodes_url, params: { errorcode: { desc: @errorcode.desc, msg: @errorcode.msg, ref: @errorcode.ref } }
    end

    assert_redirected_to errorcode_url(Errorcode.last)
  end

  test "should show errorcode" do
    get errorcode_url(@errorcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_errorcode_url(@errorcode)
    assert_response :success
  end

  test "should update errorcode" do
    patch errorcode_url(@errorcode), params: { errorcode: { desc: @errorcode.desc, msg: @errorcode.msg, ref: @errorcode.ref } }
    assert_redirected_to errorcode_url(@errorcode)
  end

  test "should destroy errorcode" do
    assert_difference("Errorcode.count", -1) do
      delete errorcode_url(@errorcode)
    end

    assert_redirected_to errorcodes_url
  end
end
