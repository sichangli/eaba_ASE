require 'test_helper'

class RestaurantUsersControllerTest < ActionController::TestCase
  setup do
    @restaurant_user = restaurant_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_user" do
    assert_difference('RestaurantUser.count') do
      post :create, restaurant_user: { account_name: @restaurant_user.account_name, license: @restaurant_user.license, name: @restaurant_user.name, password: @restaurant_user.password, phone: @restaurant_user.phone, restaurant_id: @restaurant_user.restaurant_id }
    end

    assert_redirected_to restaurant_user_path(assigns(:restaurant_user))
  end

  test "should show restaurant_user" do
    get :show, id: @restaurant_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_user
    assert_response :success
  end

  test "should update restaurant_user" do
    put :update, id: @restaurant_user, restaurant_user: { account_name: @restaurant_user.account_name, license: @restaurant_user.license, name: @restaurant_user.name, password: @restaurant_user.password, phone: @restaurant_user.phone, restaurant_id: @restaurant_user.restaurant_id }
    assert_redirected_to restaurant_user_path(assigns(:restaurant_user))
  end

  test "should destroy restaurant_user" do
    assert_difference('RestaurantUser.count', -1) do
      delete :destroy, id: @restaurant_user
    end

    assert_redirected_to restaurant_users_path
  end
end
