require 'test_helper'

class QtypesControllerTest < ActionController::TestCase
  setup do
    @qtype = qtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qtype" do
    assert_difference('Qtype.count') do
      post :create, :qtype => @qtype.attributes
    end

    assert_redirected_to qtype_path(assigns(:qtype))
  end

  test "should show qtype" do
    get :show, :id => @qtype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @qtype.to_param
    assert_response :success
  end

  test "should update qtype" do
    put :update, :id => @qtype.to_param, :qtype => @qtype.attributes
    assert_redirected_to qtype_path(assigns(:qtype))
  end

  test "should destroy qtype" do
    assert_difference('Qtype.count', -1) do
      delete :destroy, :id => @qtype.to_param
    end

    assert_redirected_to qtypes_path
  end
end
