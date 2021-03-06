require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { action: @restaurant.action, boro: @restaurant.boro, building: @restaurant.building, camis: @restaurant.camis, cuisinecode: @restaurant.cuisinecode, currentgrade: @restaurant.currentgrade, dba: @restaurant.dba, gradedate: @restaurant.gradedate, inspdate: @restaurant.inspdate, phone: @restaurant.phone, recorddate: @restaurant.recorddate, score: @restaurant.score, street: @restaurant.street, violcode: @restaurant.violcode, zipcode: @restaurant.zipcode }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    put :update, id: @restaurant, restaurant: { action: @restaurant.action, boro: @restaurant.boro, building: @restaurant.building, camis: @restaurant.camis, cuisinecode: @restaurant.cuisinecode, currentgrade: @restaurant.currentgrade, dba: @restaurant.dba, gradedate: @restaurant.gradedate, inspdate: @restaurant.inspdate, phone: @restaurant.phone, recorddate: @restaurant.recorddate, score: @restaurant.score, street: @restaurant.street, violcode: @restaurant.violcode, zipcode: @restaurant.zipcode }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
