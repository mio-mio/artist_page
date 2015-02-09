require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get biography" do
    get :biography
    assert_response :success
  end

  test "should get discography" do
    get :discography
    assert_response :success
  end

  test "should get songs" do
    get :songs
    assert_response :success
  end

  test "should get shows" do
    get :shows
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
