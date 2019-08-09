require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "should get top" do
    get "home#top"
    assert_response :success
  end

  test "should get about" do
    get "home#about"
    assert_response :success
  end

end
