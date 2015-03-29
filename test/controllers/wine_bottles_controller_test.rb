require 'test_helper'

class WineBottlesControllerTest < ActionController::TestCase
  setup do
    @wine_bottle = wine_bottles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wine_bottles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wine_bottle" do
    assert_difference('WineBottle.count') do
      post :create, wine_bottle: { name: @wine_bottle.name, notes: @wine_bottle.notes, origin: @wine_bottle.origin, purchase_date: @wine_bottle.purchase_date, rating: @wine_bottle.rating, size: @wine_bottle.size, type: @wine_bottle.type, year: @wine_bottle.year }
    end

    assert_redirected_to wine_bottle_path(assigns(:wine_bottle))
  end

  test "should show wine_bottle" do
    get :show, id: @wine_bottle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wine_bottle
    assert_response :success
  end

  test "should update wine_bottle" do
    patch :update, id: @wine_bottle, wine_bottle: { name: @wine_bottle.name, notes: @wine_bottle.notes, origin: @wine_bottle.origin, purchase_date: @wine_bottle.purchase_date, rating: @wine_bottle.rating, size: @wine_bottle.size, type: @wine_bottle.type, year: @wine_bottle.year }
    assert_redirected_to wine_bottle_path(assigns(:wine_bottle))
  end

  test "should destroy wine_bottle" do
    assert_difference('WineBottle.count', -1) do
      delete :destroy, id: @wine_bottle
    end

    assert_redirected_to wine_bottles_path
  end
end
