require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get firstname" do
    get welcome_firstname_url
    assert_response :success
  end

end
