require 'test_helper'

class ConfigurationTypesControllerTest < ActionController::TestCase
  setup do
    @configuration_type = configuration_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configuration_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuration_type" do
    assert_difference('ConfigurationType.count') do
      post :create, :configuration_type => @configuration_type.attributes
    end

    assert_redirected_to configuration_type_path(assigns(:configuration_type))
  end

  test "should show configuration_type" do
    get :show, :id => @configuration_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @configuration_type.to_param
    assert_response :success
  end

  test "should update configuration_type" do
    put :update, :id => @configuration_type.to_param, :configuration_type => @configuration_type.attributes
    assert_redirected_to configuration_type_path(assigns(:configuration_type))
  end

  test "should destroy configuration_type" do
    assert_difference('ConfigurationType.count', -1) do
      delete :destroy, :id => @configuration_type.to_param
    end

    assert_redirected_to configuration_types_path
  end
end
