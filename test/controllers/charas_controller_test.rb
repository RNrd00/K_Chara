require "test_helper"

class CharasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get charas_index_url
    assert_response :success
  end

  test "should get show" do
    get charas_show_url
    assert_response :success
  end

  test "should get edit" do
    get charas_edit_url
    assert_response :success
  end
end
