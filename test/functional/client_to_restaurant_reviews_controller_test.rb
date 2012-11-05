require 'test_helper'

class ClientToRestaurantReviewsControllerTest < ActionController::TestCase
  setup do
    @client_to_restaurant_review = client_to_restaurant_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_to_restaurant_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_to_restaurant_review" do
    assert_difference('ClientToRestaurantReview.count') do
      post :create, client_to_restaurant_review: { client_id: @client_to_restaurant_review.client_id, restaurant_id: @client_to_restaurant_review.restaurant_id, review: @client_to_restaurant_review.review, score: @client_to_restaurant_review.score }
    end

    assert_redirected_to client_to_restaurant_review_path(assigns(:client_to_restaurant_review))
  end

  test "should show client_to_restaurant_review" do
    get :show, id: @client_to_restaurant_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_to_restaurant_review
    assert_response :success
  end

  test "should update client_to_restaurant_review" do
    put :update, id: @client_to_restaurant_review, client_to_restaurant_review: { client_id: @client_to_restaurant_review.client_id, restaurant_id: @client_to_restaurant_review.restaurant_id, review: @client_to_restaurant_review.review, score: @client_to_restaurant_review.score }
    assert_redirected_to client_to_restaurant_review_path(assigns(:client_to_restaurant_review))
  end

  test "should destroy client_to_restaurant_review" do
    assert_difference('ClientToRestaurantReview.count', -1) do
      delete :destroy, id: @client_to_restaurant_review
    end

    assert_redirected_to client_to_restaurant_reviews_path
  end
end
