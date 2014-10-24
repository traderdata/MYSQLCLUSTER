require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
