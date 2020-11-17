require 'test_helper'

class DriversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drivers_index_url
    assert_response :success
  end

  test "should get show" do
    get drivers_show_url
    assert_response :success
  end

  test "should get create" do
    get drivers_create_url
    assert_response :success
  end

end
