require 'test_helper'

class OrderNotificationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_notification_create_url
    assert_response :success
  end

  test "should get index" do
    get order_notification_index_url
    assert_response :success
  end

end
