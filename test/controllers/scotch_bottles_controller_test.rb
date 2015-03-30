require 'test_helper'

class ScotchBottlesControllerTest < ActionController::TestCase
  setup do
    @scotch_bottle = scotch_bottles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scotch_bottles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scotch_bottle" do
    assert_difference('ScotchBottle.count') do
      post :create, scotch_bottle: { location: @scotch_bottle.location, name: @scotch_bottle.name, notes: @scotch_bottle.notes, quantity: @scotch_bottle.quantity, rating: @scotch_bottle.rating, size: @scotch_bottle.size, user_id: @scotch_bottle.user_id, vintage: @scotch_bottle.vintage }
    end

    assert_redirected_to scotch_bottle_path(assigns(:scotch_bottle))
  end

  test "should show scotch_bottle" do
    get :show, id: @scotch_bottle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scotch_bottle
    assert_response :success
  end

  test "should update scotch_bottle" do
    patch :update, id: @scotch_bottle, scotch_bottle: { location: @scotch_bottle.location, name: @scotch_bottle.name, notes: @scotch_bottle.notes, quantity: @scotch_bottle.quantity, rating: @scotch_bottle.rating, size: @scotch_bottle.size, user_id: @scotch_bottle.user_id, vintage: @scotch_bottle.vintage }
    assert_redirected_to scotch_bottle_path(assigns(:scotch_bottle))
  end

  test "should destroy scotch_bottle" do
    assert_difference('ScotchBottle.count', -1) do
      delete :destroy, id: @scotch_bottle
    end

    assert_redirected_to scotch_bottles_path
  end
end
