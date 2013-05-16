require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { active: @client.active, address_1: @client.address_1, address_2: @client.address_2, city: @client.city, contact_id: @client.contact_id, name: @client.name, postal_code: @client.postal_code, state_id: @client.state_id }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { active: @client.active, address_1: @client.address_1, address_2: @client.address_2, city: @client.city, contact_id: @client.contact_id, name: @client.name, postal_code: @client.postal_code, state_id: @client.state_id }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
