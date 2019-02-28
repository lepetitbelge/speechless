require 'test_helper'

class Admin::SpeakersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_speakers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_speakers_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_speakers_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_speakers_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_speakers_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_speakers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_speakers_destroy_url
    assert_response :success
  end

end
