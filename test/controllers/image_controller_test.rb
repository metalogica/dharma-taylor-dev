require 'test_helper'

class ImageControllerTest < ActionDispatch::IntegrationTest
  test "should get :delete" do
    get image_:delete_url
    assert_response :success
  end

end
