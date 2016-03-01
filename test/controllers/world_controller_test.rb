require 'test_helper'

class WorldControllerTest < ActionController::TestCase


  test "should get index" do
    get :index
    assert_response :success
  end

  # for this test to work, may need to set the instance variable first
  # test "should get show" do
  #   get :show
  #   assert_response :success
  # end

end
