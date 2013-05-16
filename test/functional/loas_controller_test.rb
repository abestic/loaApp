require 'test_helper'

class LoasControllerTest < ActionController::TestCase
  setup do
    @loa = loas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loa" do
    assert_difference('Loa.count') do
      post :create, loa: { carrier_id: @loa.carrier_id, company_id: @loa.company_id, effective_date: @loa.effective_date, expiration_date: @loa.expiration_date }
    end

    assert_redirected_to loa_path(assigns(:loa))
  end

  test "should show loa" do
    get :show, id: @loa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loa
    assert_response :success
  end

  test "should update loa" do
    put :update, id: @loa, loa: { carrier_id: @loa.carrier_id, company_id: @loa.company_id, effective_date: @loa.effective_date, expiration_date: @loa.expiration_date }
    assert_redirected_to loa_path(assigns(:loa))
  end

  test "should destroy loa" do
    assert_difference('Loa.count', -1) do
      delete :destroy, id: @loa
    end

    assert_redirected_to loas_path
  end
end
