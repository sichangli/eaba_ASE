require 'test_helper'

class ClientUsersControllerTest < ActionController::TestCase
  setup do
    @client_user = client_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_user" do
    assert_difference('ClientUser.count') do
      post :create, client_user: { account_name: @client_user.account_name, address: @client_user.address, birthday: @client_user.birthday, gender: @client_user.gender, name: @client_user.name, password: @client_user.password, phone: @client_user.phone, zipcode: @client_user.zipcode }
    end

    assert_redirected_to client_user_path(assigns(:client_user))
  end

  test "should show client_user" do
    get :show, id: @client_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_user
    assert_response :success
  end

  test "should update client_user" do
    put :update, id: @client_user, client_user: { account_name: @client_user.account_name, address: @client_user.address, birthday: @client_user.birthday, gender: @client_user.gender, name: @client_user.name, password: @client_user.password, phone: @client_user.phone, zipcode: @client_user.zipcode }
    assert_redirected_to client_user_path(assigns(:client_user))
  end

  test "should destroy client_user" do
    assert_difference('ClientUser.count', -1) do
      delete :destroy, id: @client_user
    end

    assert_redirected_to client_users_path
  end
end
