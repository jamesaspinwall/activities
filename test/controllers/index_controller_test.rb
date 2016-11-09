require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get default" do
    get index_default_url
    assert_response :success
  end

  test "should get check" do
    get index_check_url
    assert_response :success
  end

  test "should get show" do
    get index_show_url
    assert_response :success
  end

end
