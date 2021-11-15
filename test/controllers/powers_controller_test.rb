require 'test_helper'

class PowersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get powers_index_url
    assert_response :success
  end

  test "should get new" do
    get powers_new_url
    assert_response :success
  end

  test "should get create" do
    get powers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get powers_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get powers_edit_url
    assert_response :success
  end

  test "should get update" do
    get powers_update_url
    assert_response :success
  end

end
