require 'test_helper'

class MobilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mobiles_index_url
    assert_response :success
  end

  test "should get new" do
    get mobiles_new_url
    assert_response :success
  end

  test "should get create" do
    get mobiles_create_url
    assert_response :success
  end

  test "should get show" do
    get mobiles_show_url
    assert_response :success
  end

  test "should get edit" do
    get mobiles_edit_url
    assert_response :success
  end

  test "should get update" do
    get mobiles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mobiles_destroy_url
    assert_response :success
  end

end
