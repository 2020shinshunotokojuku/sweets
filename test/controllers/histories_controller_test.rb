require 'test_helper'

class HistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get information" do
    get histories_information_url
    assert_response :success
  end

  test "should get really" do
    get histories_really_url
    assert_response :success
  end

  test "should get thanks" do
    get histories_thanks_url
    assert_response :success
  end

  test "should get index" do
    get histories_index_url
    assert_response :success
  end

  test "should get show" do
    get histories_show_url
    assert_response :success
  end

end
