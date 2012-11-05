require 'test_helper'

class RestaurantToClientReviewsControllerTest < ActionController::TestCase
  setup do
    @restaurant_to_client_review = restaurant_to_client_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_to_client_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_to_client_review" do
    assert_difference('RestaurantToClientReview.count') do
      post :create, restaurant_to_client_review: { client_id: @restaurant_to_client_review.client_id, restaurant_id: @restaurant_to_client_review.restaurant_id, review: @restaurant_to_client_review.review, score: @restaurant_to_client_review.score }
    end

    assert_redirected_to restaurant_to_client_review_path(assigns(:restaurant_to_client_review))
  end

  test "should show restaurant_to_client_review" do
    get :show, id: @restaurant_to_client_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_to_client_review
    assert_response :success
  end

  test "should update restaurant_to_client_review" do
    put :update, id: @restaurant_to_client_review, restaurant_to_client_review: { client_id: @restaurant_to_client_review.client_id, restaurant_id: @restaurant_to_client_review.restaurant_id, review: @restaurant_to_client_review.review, score: @restaurant_to_client_review.score }
    assert_redirected_to restaurant_to_client_review_path(assigns(:restaurant_to_client_review))
  end

  test "should destroy restaurant_to_client_review" do
    assert_difference('RestaurantToClientReview.count', -1) do
      delete :destroy, id: @restaurant_to_client_review
    end

    assert_redirected_to restaurant_to_client_reviews_path
  end
end
