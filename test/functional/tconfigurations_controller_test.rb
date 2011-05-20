require 'test_helper'

class TconfigurationsControllerTest < ActionController::TestCase
  setup do
    @tconfiguration = tconfigurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tconfigurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tconfiguration" do
    assert_difference('Tconfiguration.count') do
      post :create, :tconfiguration => @tconfiguration.attributes
    end

    assert_redirected_to tconfiguration_path(assigns(:tconfiguration))
  end

  test "should show tconfiguration" do
    get :show, :id => @tconfiguration.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tconfiguration.to_param
    assert_response :success
  end

  test "should update tconfiguration" do
    put :update, :id => @tconfiguration.to_param, :tconfiguration => @tconfiguration.attributes
    assert_redirected_to tconfiguration_path(assigns(:tconfiguration))
  end

  test "should destroy tconfiguration" do
    assert_difference('Tconfiguration.count', -1) do
      delete :destroy, :id => @tconfiguration.to_param
    end

    assert_redirected_to tconfigurations_path
  end
end
