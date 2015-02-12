require 'test_helper'

class AchievmentsControllerTest < ActionController::TestCase
  setup do
    @achievment = achievments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:achievments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create achievment" do
    assert_difference('Achievment.count') do
      post :create, achievment: { option: @achievment.option }
    end

    assert_redirected_to achievment_path(assigns(:achievment))
  end

  test "should show achievment" do
    get :show, id: @achievment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @achievment
    assert_response :success
  end

  test "should update achievment" do
    patch :update, id: @achievment, achievment: { option: @achievment.option }
    assert_redirected_to achievment_path(assigns(:achievment))
  end

  test "should destroy achievment" do
    assert_difference('Achievment.count', -1) do
      delete :destroy, id: @achievment
    end

    assert_redirected_to achievments_path
  end
end
