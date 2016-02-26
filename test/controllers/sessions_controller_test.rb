require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def setup
    @tenant = tenants(:bob)
  end

  test "valid login should return user" do
    post :create, { email: @tenant.email, password: 'foobar' }, format: "json"
    assert_response :success
    body = JSON.parse(response.body)
    assert_equal @tenant.email, body["email"]
    assert_equal @tenant.password, body["password"]
  end

  test "invalid login should return errors" do
    post :create, { email: @tenant.email, password: 'wrongpass' }, format: "json"
    assert_response :unauthorized
    body = JSON.parse(response.body)
    assert_equal "Not authenticated", body["errors"]
  end

end
