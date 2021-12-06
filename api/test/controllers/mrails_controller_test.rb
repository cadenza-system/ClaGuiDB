require 'test_helper'

class MrailsControllerTest < ActionDispatch::IntegrationTest
  test "should get g" do
    get mrails_g_url
    assert_response :success
  end

  test "should get controller" do
    get mrails_controller_url
    assert_response :success
  end

  test "should get movies" do
    get mrails_movies_url
    assert_response :success
  end

end
