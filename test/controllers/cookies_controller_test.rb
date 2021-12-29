require "test_helper"

class CookiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cookies_new_url
    assert_response :success
  end

  test "should get create" do
    get cookies_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cookies_destroy_url
    assert_response :success
  end
end
