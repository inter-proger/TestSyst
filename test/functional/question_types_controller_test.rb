require 'test_helper'

class QuestionTypesControllerTest < ActionController::TestCase
  setup do
    @question_type = question_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_type" do
    assert_difference('QuestionType.count') do
      post :create, :question_type => @question_type.attributes
    end

    assert_redirected_to question_type_path(assigns(:question_type))
  end

  test "should show question_type" do
    get :show, :id => @question_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_type.to_param
    assert_response :success
  end

  test "should update question_type" do
    put :update, :id => @question_type.to_param, :question_type => @question_type.attributes
    assert_redirected_to question_type_path(assigns(:question_type))
  end

  test "should destroy question_type" do
    assert_difference('QuestionType.count', -1) do
      delete :destroy, :id => @question_type.to_param
    end

    assert_redirected_to question_types_path
  end
end
