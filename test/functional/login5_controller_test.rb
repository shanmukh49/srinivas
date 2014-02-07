require 'test_helper'

class Login5ControllerTest < ActionController::TestCase
  test "should get login_page" do
    get :login_page
    assert_response :success
  end

end
