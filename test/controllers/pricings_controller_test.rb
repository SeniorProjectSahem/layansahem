require 'test_helper'

class PricingsControllerTest < ActionController::TestCase
  setup do
    @pricing = pricings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pricings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pricing" do
    assert_difference('Pricing.count') do
      post :create, pricing: { daily_price: @pricing.daily_price, item_id: @pricing.item_id, monthly_price: @pricing.monthly_price, yearly_price: @pricing.yearly_price }
    end

    assert_redirected_to pricing_path(assigns(:pricing))
  end

  test "should show pricing" do
    get :show, id: @pricing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pricing
    assert_response :success
  end

  test "should update pricing" do
    patch :update, id: @pricing, pricing: { daily_price: @pricing.daily_price, item_id: @pricing.item_id, monthly_price: @pricing.monthly_price, yearly_price: @pricing.yearly_price }
    assert_redirected_to pricing_path(assigns(:pricing))
  end

  test "should destroy pricing" do
    assert_difference('Pricing.count', -1) do
      delete :destroy, id: @pricing
    end

    assert_redirected_to pricings_path
  end
end
