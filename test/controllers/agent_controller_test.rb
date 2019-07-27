require 'test_helper'

class AgentControllerTest < ActionDispatch::IntegrationTest
  test "should get orders" do
    get agent_orders_url
    assert_response :success
  end

end
