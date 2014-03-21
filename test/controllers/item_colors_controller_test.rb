require 'test_helper'

class ItemColorsControllerTest < ActionController::TestCase
  setup do
    @item_color = item_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_color" do
    assert_difference('ItemColor.count') do
      post :create, item_color: { color_id: @item_color.color_id, item_id: @item_color.item_id }
    end

    assert_redirected_to item_color_path(assigns(:item_color))
  end

  test "should show item_color" do
    get :show, id: @item_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_color
    assert_response :success
  end

  test "should update item_color" do
    patch :update, id: @item_color, item_color: { color_id: @item_color.color_id, item_id: @item_color.item_id }
    assert_redirected_to item_color_path(assigns(:item_color))
  end

  test "should destroy item_color" do
    assert_difference('ItemColor.count', -1) do
      delete :destroy, id: @item_color
    end

    assert_redirected_to item_colors_path
  end
end
