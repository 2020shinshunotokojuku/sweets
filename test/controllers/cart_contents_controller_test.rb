require 'test_helper'

class CartContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_contents_index_url
    assert_response :success
  end

end
