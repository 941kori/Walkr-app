require 'test_helper'

class WalkrsControllerTest < ActionController::TestCase
  setup do
    @walkr = walkrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walkrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walkr" do
    assert_difference('Walkr.count') do
      post :create, walkr: { description: @walkr.description, name: @walkr.name, picture: @walkr.picture, rating: @walkr.rating }
    end

    assert_redirected_to walkr_path(assigns(:walkr))
  end

  test "should show walkr" do
    get :show, id: @walkr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walkr
    assert_response :success
  end

  test "should update walkr" do
    patch :update, id: @walkr, walkr: { description: @walkr.description, name: @walkr.name, picture: @walkr.picture, rating: @walkr.rating }
    assert_redirected_to walkr_path(assigns(:walkr))
  end

  test "should destroy walkr" do
    assert_difference('Walkr.count', -1) do
      delete :destroy, id: @walkr
    end

    assert_redirected_to walkrs_path
  end
end
