require "test_helper"

class PersonnalitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personnalities_index_url
    assert_response :success
  end

  test "should get show" do
    get personnalities_show_url
    assert_response :success
  end

  test "should get new" do
    get personnalities_new_url
    assert_response :success
  end

  test "should get create" do
    get personnalities_create_url
    assert_response :success
  end

  test "should get edit" do
    get personnalities_edit_url
    assert_response :success
  end

  test "should get update" do
    get personnalities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get personnalities_destroy_url
    assert_response :success
  end
end
