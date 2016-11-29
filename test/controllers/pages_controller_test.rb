require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get status" do
    get pages_status_url
    assert_response :success
  end

  test "should get livemap" do
    get pages_livemap_url
    assert_response :success
  end

end
